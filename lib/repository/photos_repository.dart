import 'package:morty_api/characters/model/character_model.dart';

abstract class PhotosRepository {
  ///Fetch Characters list for specific [page] and [limit]
  Future<List<CharacterModel>> fetchCharacters(
      {required int page, required int limit});

  ///Fetch Characters paginated response for specific [page] and [limit]
  Future<CharactersData> fetchCharactersData(
      {required int page, required int limit});
}
