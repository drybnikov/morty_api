import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:morty_api/data/user.dart';
import 'package:morty_api/repository/user_data_provider.dart';
import 'package:path_provider/path_provider.dart';

@LazySingleton(as: UserDataProvider)
class UserDataProviderImpl implements UserDataProvider {
  late final Isar _isar;

  UserDataProviderImpl();

  @PostConstruct(preResolve: false)
  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [UserSchema, FavoriteCharacterSchema],
      directory: dir.path,
    );
  }

  @override
  Future<List<int>> fetchFavorites() async {
    final favoriteCharacters = await _isar.favoriteCharacters.where().findAll();

    return favoriteCharacters.map((e) => e.id).toList();
  }

  @override
  Stream<List<FavoriteCharacter>> watchFavorites() {
    return _isar.favoriteCharacters.where().watch();
  }

  @override
  Future<bool> updateFavorite(int characterId, bool isFavorite) async {
    await _isar.writeTxn(() async {
      Fimber.d(
          'Update favorite characterId: $characterId, isFavorite: $isFavorite');
      if (isFavorite) {
        final newFavorite = FavoriteCharacter()..id = characterId;
        return await _isar.favoriteCharacters.put(newFavorite) != 0;
      } else {
        return await _isar.favoriteCharacters.delete(characterId);
      }
    });

    return false;
  }
}
