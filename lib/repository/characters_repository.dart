import 'package:morty_api/characters/model/character_model.dart';

abstract class CharactersRepository {
  ///Fetch Characters list for specific [page] and [limit]
  Future<List<CharacterModel>> fetchCharacters(
      {required int page, required int limit});

  ///Fetch Characters paginated response for specific [page] and [limit]
  Future<CharactersData> fetchCharactersData(
      {required int page, required int limit});

  Future<bool> updateFavorite(CharactersData data, CharacterModel character);

  Stream<List<int>> watchFavorites();
}
