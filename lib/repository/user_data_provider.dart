import 'package:morty_api/data/user.dart';

abstract class UserDataProvider {
  Stream<List<FavoriteCharacter>> watchFavorites();

  Future<List<int>> fetchFavorites();

  Future<bool> updateFavorite(int characterId, bool isFavorite);
}
