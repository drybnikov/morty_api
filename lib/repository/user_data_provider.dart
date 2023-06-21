import 'package:morty_api/data/character_data.dart';
import 'package:morty_api/data/user.dart';

abstract class UserDataProvider {
  Stream<List<FavoriteCharacter>> watchFavorites();

  Future<List<int>> fetchFavorites();

  Future<bool> updateFavorite(int characterId, bool isFavorite);

  Future<List<CharacterCollection>> fetchCharacterData(int page, int limit);

  Future<bool> storeCharacterData(List<CharacterCollection> charactersList);
}
