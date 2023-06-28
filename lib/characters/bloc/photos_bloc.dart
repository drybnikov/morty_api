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

part 'photos_bloc.freezed.dart';

@Freezed(toStringOverride: true, copyWith: false)
class PhotosEvent with _$PhotosEvent {
  const PhotosEvent._();

  const factory PhotosEvent.fetchPhotos(
      {required PageModel pageModel, CharacterFilter? filter}) = _fetchPhotos;

  const factory PhotosEvent.getNextPage() = _getNextPage;

  const factory PhotosEvent.getPrevPage() = _getPrevPage;

  const factory PhotosEvent.updateFavorite(CharacterModel character) =
      _updateFavorite;

  const factory PhotosEvent.updateFavorites(List<int> favorites) =
      _updateFavorites;

  const factory PhotosEvent.filterCharacters(
      {required CharacterFilter filter}) = _filterCharacters;
}

@Freezed(toStringOverride: false)
class PhotosState with _$PhotosState {
  const PhotosState._();

  const factory PhotosState.loading({
    @Default(CharactersData()) CharactersData characters,
    CharacterFilter? filter,
  }) = _loading;

  const factory PhotosState.initialized({
    required CharactersData characters,
    CharacterFilter? filter,
  }) = _initialized;

  const factory PhotosState.error({
    required CharactersData characters,
    CharacterFilter? filter,
    @Default('Error') String message,
    String? errorCode,
  }) = photosError;

  CharacterModel selected(int id) =>
      characters.characters.firstWhere((element) => element.id == id);
}

const _filterApplyDebounce = Duration(milliseconds: 400);

@lazySingleton
class PhotosBloc extends Bloc<PhotosEvent, PhotosState>
    with BlocConcurrencyMixin {
  final CharactersRepository _photosRepository;
  late StreamSubscription<List<int>> _favoritesSubscription;

  PhotosBloc(this._photosRepository) : super(const _loading()) {
    on<_fetchPhotos>(_onFetchPhotos);
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
      add(PhotosEvent.updateFavorites(newFavorites));
    });
  }

  @override
  Future<void> close() async {
    _favoritesSubscription.cancel();
    super.close();
  }

  FutureOr<void> _onFetchPhotos(_fetchPhotos event, emit) async {
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
        emit(photosError(
          message: error.response?.data.toString() ?? error.message,
          errorCode: error.type.name,
          characters: error.response?.statusCode == 404
              ? const CharactersData()
              : state.characters,
          filter: event.filter,
        ));
      } else {
        emit(photosError(
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
      await _onFetchPhotos(
        _fetchPhotos(
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
      await _onFetchPhotos(
        _fetchPhotos(
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
    await _onFetchPhotos(
      _fetchPhotos(
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
