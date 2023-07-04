import 'package:morty_api/characters/model/character_filter.dart';
import 'package:morty_api/characters/model/character_model.dart';

abstract class CharactersRepository {
  ///Fetch Characters paginated response for specific [page] with optional [filter]
  ///Allow optional [forceRefresh] flag to force refresh from network
  Future<CharactersData> fetchCharactersData(
      {required int page, CharacterFilter? filter, bool forceRefresh = false});

  Future<bool> updateFavorite(CharactersData data, CharacterModel character);

  Stream<List<int>> watchFavorites();
}
