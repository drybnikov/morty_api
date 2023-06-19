import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';
import 'package:morty_api/model/photos/character_response.dart';
import 'package:morty_api/network/rest_client_public.dart';
import 'package:morty_api/repository/photos_repository.dart';

import '../../model/photos/page_model.dart';

@Injectable(as: PhotosRepository)
class PhotosRepositoryImpl implements PhotosRepository {
  final RestClientPublic _restClient;

  PhotosRepositoryImpl(this._restClient);

  @override
  Future<List<CharacterModel>> fetchPhotos(
      {required int page, required int limit}) async {
    try {
      return _restClient.getCharacter(page, limit);
    } on Exception catch (ex, st) {
      Fimber.e('Error when load photos on page:$page', ex: ex, stacktrace: st);
      rethrow;
    }
  }

  @override
  Future<CharactersResponse> fetchPhotosResponse(
      {required int page, required int limit}) async {
    try {
      return await _restClient.getCharacterPage(page, limit);

      // return CharactersResponse(
      //   characters: response.data,
      //   pageModel: response.response.headers.toPageModel(page, limit),
      // );
    } on Exception catch (ex, st) {
      Fimber.e('Error when load characters on page:$page', ex: ex, stacktrace: st);
      rethrow;
    }
  }
}

extension PageModelParse on Headers {
  PageModel toPageModel(int currentPage, int pageLimit) =>
      PageModel.fromHeaderLink(
        currentPage: currentPage,
        pageLimit: pageLimit,
        link: value('link') ?? '',
      );
}
