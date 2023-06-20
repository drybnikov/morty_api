import 'package:morty_api/model/characters/character_response.dart';

abstract class PhotosRepository {
  ///Fetch photos list for specific [page] and [limit]
  Future<List<CharacterModel>> fetchPhotos(
      {required int page, required int limit});

  ///Fetch photos paginated response for specific [page] and [limit]
  Future<CharactersResponse> fetchPhotosResponse(
      {required int page, required int limit});
}
