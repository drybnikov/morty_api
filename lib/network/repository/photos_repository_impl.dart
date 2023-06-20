import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';
import 'package:morty_api/characters/model/character_model.dart';
import 'package:morty_api/network/model/characters/character_response.dart';
import 'package:morty_api/network/rest_client_public.dart';
import 'package:morty_api/repository/photos_repository.dart';
import 'package:morty_api/repository/user_data_provider.dart';

@Injectable(as: PhotosRepository)
class PhotosRepositoryImpl implements PhotosRepository {
  final RestClientPublic _restClient;
  final UserDataProvider _userDataProvider;

  PhotosRepositoryImpl(this._restClient, this._userDataProvider);

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
      final result = await _restClient.getCharacterPage(page, limit);
      final favorites = await _userDataProvider.fetchFavorites();

      return result.toCharactersData(favorites);
    } on Exception catch (ex, st) {
      Fimber.e('Error when load characters on page:$page',
          ex: ex, stacktrace: st);
      rethrow;
    }
  }

  @override
  Future<CharactersData> updateFavorite(
      CharactersData data, CharacterModel character) async {
    final updateResult = await _userDataProvider.updateFavorite(
        character.id, !character.isFavorite);
    Fimber.d('Update favorite result: $updateResult');

    final updatedList = data.characters
        .map((element) => element.id == character.id
            ? element.copyWith(isFavorite: !element.isFavorite)
            : element)
        .toList();

    return data.copyWith(characters: updatedList);
  }
}

extension CharactersResponseMapper on CharactersResponse {
  CharactersData toCharactersData(List<int> favorites) => CharactersData(
        pageModel: pageModel,
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
}
