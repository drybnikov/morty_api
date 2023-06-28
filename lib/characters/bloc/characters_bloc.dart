import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:morty_api/characters/model/character_filter.dart';
import 'package:morty_api/characters/model/character_model.dart';
import 'package:morty_api/network/model/characters/page_model.dart';
import 'package:morty_api/repository/characters_repository.dart';
import 'package:morty_api/utils/bloc_concurrency_mixin.dart';

part 'characters_bloc.freezed.dart';

@Freezed(toStringOverride: true, copyWith: false)
class CharactersEvent with _$CharactersEvent {
  const CharactersEvent._();

  const factory CharactersEvent.fetchCharacters(
      {required PageModel pageModel,
      CharacterFilter? filter}) = _fetchCharacters;

  const factory CharactersEvent.getNextPage() = _getNextPage;

  const factory CharactersEvent.getPrevPage() = _getPrevPage;

  const factory CharactersEvent.updateFavorite(CharacterModel character) =
      _updateFavorite;

  const factory CharactersEvent.updateFavorites(List<int> favorites) =
      _updateFavorites;

  const factory CharactersEvent.filterCharacters(
      {required CharacterFilter filter}) = _filterCharacters;
}

@Freezed(toStringOverride: false)
class CharactersState with _$CharactersState {
  const CharactersState._();

  const factory CharactersState.loading({
    @Default(CharactersData()) CharactersData characters,
    CharacterFilter? filter,
  }) = _loading;

  const factory CharactersState.initialized({
    required CharactersData characters,
    CharacterFilter? filter,
  }) = _initialized;

  const factory CharactersState.error({
    required CharactersData characters,
    CharacterFilter? filter,
    @Default('Error') String message,
    String? errorCode,
  }) = charactersError;

  CharacterModel selected(int id) =>
      characters.characters.firstWhere((element) => element.id == id);
}

const _filterApplyDebounce = Duration(milliseconds: 400);

@lazySingleton
class CharactersBloc extends Bloc<CharactersEvent, CharactersState>
    with BlocConcurrencyMixin {
  final CharactersRepository _photosRepository;
  late StreamSubscription<List<int>> _favoritesSubscription;

  CharactersBloc(this._photosRepository) : super(const _loading()) {
    on<_fetchCharacters>(_onFetchCharacters);
    on<_getNextPage>(_onGetNextPage);
    on<_getPrevPage>(_onGetPrevPage);
    on<_updateFavorite>(_onUpdateFavorite);
    on<_updateFavorites>(_onUpdateFavorites);
    on<_filterCharacters>(
      _onFilterCharacters,
      transformer: debounce(_filterApplyDebounce),
    );

    _favoritesSubscription =
        _photosRepository.watchFavorites().listen((newFavorites) {
      add(CharactersEvent.updateFavorites(newFavorites));
    });
  }

  @override
  Future<void> close() async {
    _favoritesSubscription.cancel();
    super.close();
  }

  FutureOr<void> _onFetchCharacters(_fetchCharacters event, emit) async {
    try {
      final pageModel = event.pageModel;

      final charactersResult = await _photosRepository.fetchCharactersData(
        page: pageModel.current,
        filter: event.filter,
      );

      emit(_initialized(characters: charactersResult, filter: event.filter));
    } on Object catch (error, st) {
      Fimber.e('Error when load characters', ex: error, stacktrace: st);
      if (error is DioError) {
        emit(charactersError(
          message: error.response?.data.toString() ?? error.message,
          errorCode: error.type.name,
          characters: error.response?.statusCode == 404
              ? const CharactersData()
              : state.characters,
          filter: event.filter,
        ));
      } else {
        emit(charactersError(
          message: error.toString(),
          characters: state.characters,
          filter: event.filter,
        ));
      }
    }
  }

  FutureOr<void> _onGetNextPage(_getNextPage event, emit) async {
    final pageModel = state.characters.pageModel;
    if (pageModel.hasNext) {
      await _onFetchCharacters(
        _fetchCharacters(
          pageModel: pageModel.copyWith(current: pageModel.current + 1),
          filter: state.filter,
        ),
        emit,
      );
    }
  }

  FutureOr<void> _onGetPrevPage(_getPrevPage event, emit) async {
    final pageModel = state.characters.pageModel;
    if (pageModel.hasPrev) {
      await _onFetchCharacters(
        _fetchCharacters(
          pageModel: pageModel.copyWith(current: pageModel.current - 1),
          filter: state.filter,
        ),
        emit,
      );
    }
  }

  FutureOr<void> _onUpdateFavorite(_updateFavorite event, emit) async {
    await _photosRepository.updateFavorite(
      state.characters,
      event.character,
    );
  }

  FutureOr<void> _onUpdateFavorites(_updateFavorites event, emit) async {
    emit(
      _initialized(
        characters: state.characters.updateFavorite(event.favorites),
        filter: state.filter,
      ),
    );
  }

  FutureOr<void> _onFilterCharacters(_filterCharacters event, emit) async {
    await _onFetchCharacters(
      _fetchCharacters(
        pageModel: const PageModel.firstPage(),
        filter: event.filter,
      ),
      emit,
    );
  }
}

extension CharactersDataUpdate on CharactersData {
  CharactersData updateFavorite(List<int> favorites) {
    final updatedList = characters
        .map(
          (element) => element.copyWith(
            isFavorite: favorites.contains(element.id),
          ),
        )
        .toList();

    return copyWith(characters: updatedList);
  }
}
