import 'package:fimber/fimber.dart';
import 'package:injectable/injectable.dart';
import 'package:morty_api/characters/model/character_model.dart';
import 'package:morty_api/network/model/characters/character_response.dart';
import 'package:morty_api/network/rest_client_public.dart';
import 'package:morty_api/repository/photos_repository.dart';

@Injectable(as: PhotosRepository)
class PhotosRepositoryImpl implements PhotosRepository {
  final RestClientPublic _restClient;

  PhotosRepositoryImpl(this._restClient);

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

      return result.toCharactersData();
    } on Exception catch (ex, st) {
      Fimber.e('Error when load characters on page:$page',
          ex: ex, stacktrace: st);
      rethrow;
    }
  }
}

extension CharactersResponseMapper on CharactersResponse {
  CharactersData toCharactersData() => CharactersData(
        pageModel: pageModel,
        characters: characters.map((e) => e.toCharacterModel()).toList(),
      );
}

extension CharacterResponseMapper on CharacterResponse {
  CharacterModel toCharacterModel({bool isFavorite = false}) => CharacterModel(
        id: id,
        name: name,
        image: image,
        status: status,
        isFavorite: isFavorite,
      );
}
