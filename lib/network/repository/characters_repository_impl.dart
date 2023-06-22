import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';
import 'package:morty_api/characters/model/character_model.dart';
import 'package:morty_api/data/character_data.dart';
import 'package:morty_api/network/model/characters/character_response.dart';
import 'package:morty_api/network/rest_client_public.dart';
import 'package:morty_api/repository/characters_repository.dart';
import 'package:morty_api/repository/user_data_provider.dart';

import '../model/characters/page_model.dart';

@Injectable(as: CharactersRepository)
class CharactersRepositoryImpl implements CharactersRepository {
  final RestClientPublic _restClient;
  final UserDataProvider _userDataProvider;

  CharactersRepositoryImpl(this._restClient, this._userDataProvider);

  @override
  Future<List<CharacterModel>> fetchCharacters(
      {required int page, required int limit}) async {
    try {
      final result = await _restClient.getCharacter(page, limit);

      return result.map((e) => e.toCharacterModel()).toList();
    } on Exception catch (ex, st) {
      Fimber.e('Error when load characters on page:$page',
          ex: ex, stacktrace: st);
      rethrow;
    }
  }

  @override
  Future<CharactersData> fetchCharactersData(
      {required int page, required int limit}) async {
    try {
      final cachedData =
          await _userDataProvider.fetchCharacterData(page - 1, pageSize);
      final favorites = await _userDataProvider.fetchFavorites();

      if (cachedData.isEmpty) {
        final result = await _restClient.getCharacterPage(page);
        final charactersList =
            result.characters.map((e) => e.toCharacterCollection()).toList();
        await _userDataProvider.storeCharacterData(charactersList);

        return result.toCharactersData(favorites, page);
      } else {
        return cachedData.toCharactersData(favorites, page);
      }
    } on Exception catch (ex, st) {
      Fimber.e('Error when load characters on page:$page',
          ex: ex, stacktrace: st);
      rethrow;
    }
  }

  @override
  Future<bool> updateFavorite(
      CharactersData data, CharacterModel character) async {
    final updateResult = await _userDataProvider.updateFavorite(
        character.id, !character.isFavorite);
    Fimber.d('Update favorite result: $updateResult');

    return updateResult;
  }

  @override
  Stream<List<int>> watchFavorites() {
    return _userDataProvider
        .watchFavorites()
        .map((event) => event.map((e) => e.id).toList());
  }
}

extension CharactersResponseMapper on CharactersResponse {
  CharactersData toCharactersData(List<int> favorites, int currentPage) =>
      CharactersData(
        pageModel: pageModel.copyWith(current: currentPage),
        characters: characters
            .map(
              (character) => character.toCharacterModel(
                isFavorite: favorites.contains(character.id),
              ),
            )
            .toList(),
      );
}

extension CharacterResponseMapper on CharacterResponse {
  CharacterModel toCharacterModel({bool isFavorite = false}) => CharacterModel(
        id: id,
        name: name,
        image: image,
        status: status,
        gender: gender,
        species: species,
        isFavorite: isFavorite,
      );

  CharacterCollection toCharacterCollection({bool isFavorite = false}) =>
      CharacterCollection(
        id: id,
        name: name,
        image: image,
        status: status.name,
        gender: gender.name,
        species: species,
      );
}

extension CharacterCollectionMapper on List<CharacterCollection> {
  CharactersData toCharactersData(List<int> favorites, int page) {
    final pageModel = PageModel(
      current: page,
      pages: length,
      next: (page + 1).toString(),
      prev: page > 1 ? (page - 1).toString() : null,
    );
    Fimber.d('Page model: $pageModel');

    return CharactersData(
      pageModel: pageModel,
      characters: map(
        (character) => character.toCharacterModel(
          isFavorite: favorites.contains(character.id),
        ),
      ).toList(),
    );
  }
}

extension CharacterCollectionMap on CharacterCollection {
  CharacterModel toCharacterModel({bool isFavorite = false}) => CharacterModel(
        id: id,
        name: name,
        image: image ?? '',
        status: CharacterStatus.fromString(status),
        gender: GenderType.fromString(gender),
        species: species ?? '',
        isFavorite: isFavorite,
      );
}
