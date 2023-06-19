import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:morty_api/model/photos/character_response.dart';
import 'package:morty_api/model/photos/page_model.dart';
import 'package:morty_api/repository/photos_repository.dart';

part 'photos_bloc.freezed.dart';

@Freezed(toStringOverride: true, copyWith: false)
class PhotosEvent with _$PhotosEvent {
  const PhotosEvent._();

  const factory PhotosEvent.fetchPhotos({required PageModel pageModel}) =
      _fetchPhotos;

  const factory PhotosEvent.getNextPage() = _getNextPage;

  const factory PhotosEvent.getPrevPage() = _getPrevPage;
}

@Freezed(toStringOverride: false, copyWith: false)
class PhotosState with _$PhotosState {
  const PhotosState._();

  const factory PhotosState.loading(
      {@Default(CharactersResponse.empty())
          CharactersResponse characters}) = _loading;

  const factory PhotosState.initialized(
      {required CharactersResponse characters}) = _initialized;

  const factory PhotosState.error({
    required CharactersResponse characters,
    @Default('Error') String message,
    String? errorCode,
  }) = photosError;
}

@injectable
class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final PhotosRepository _photosRepository;

  PhotosBloc(this._photosRepository) : super(const _loading()) {
    on<_fetchPhotos>(_onFetchPhotos);
    on<_getNextPage>(_onGetNextPage);
    on<_getPrevPage>(_onGetPrevPage);
  }

  FutureOr<void> _onFetchPhotos(_fetchPhotos event, emit) async {
    try {
      final pageModel = event.pageModel;

      final charactersResult = await _photosRepository.fetchPhotosResponse(
        page: event.pageModel.current,
        limit: pageModel.pages,
      );

      emit(_initialized(characters: charactersResult));
    } on Object catch (error, st) {
      Fimber.e('Error when load characters', ex: error, stacktrace: st);
      if (error is DioError) {
        emit(photosError(
          message: error.response?.data.toString() ?? error.message,
          errorCode: error.type.name,
          characters: state.characters,
        ));
      } else {
        emit(photosError(
          message: error.toString(),
          characters: state.characters,
        ));
      }
    }
  }

  FutureOr<void> _onGetNextPage(_getNextPage event, emit) async {
    final pageModel = state.characters.pageModel;
    if (pageModel.hasNext) {
      await _onFetchPhotos(
        _fetchPhotos(
            pageModel: pageModel.copyWith(current: pageModel.current + 1)),
        emit,
      );
    }
  }

  FutureOr<void> _onGetPrevPage(_getPrevPage event, emit) async {
    final pageModel = state.characters.pageModel;
    if (pageModel.hasPrev) {
      await _onFetchPhotos(
        _fetchPhotos(
            pageModel: pageModel.copyWith(current: pageModel.current - 1)),
        emit,
      );
    }
  }
}
