import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:morty_api/network/client_provider.dart';
import 'package:morty_api/network/model/characters/character_response.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client_public.g.dart';

//ignore_for_file: long-parameter-list
@RestApi(
  baseUrl: 'https://rickandmortyapi.com/api/',
)
@lazySingleton
abstract class RestClientPublic {
  @factoryMethod
  factory RestClientPublic(ClientProvider clientProvider) {
    return _RestClientPublic(clientProvider.client);
  }

  /// Get paged photos list
  @GET('character/')
  Future<List<CharacterResponse>> getCharacter(
    @Query('page') int page,
    @Query('limit') int limit,
  );

  /// Get paged photos list with headers
  @GET('character/')
  Future<CharactersResponse> getCharacterPage({
    @Query('page') required int page,
    @Query('name') String? name,
    @Query('status') String? status,
    @Query('species') String? species,
    @Query('gender') String? gender,
  });
}
