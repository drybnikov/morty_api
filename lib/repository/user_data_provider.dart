abstract class UserDataProvider {
  Future<List<int>> fetchFavorites();

  Future<bool> updateFavorite(int characterId, bool isFavorite);
}
