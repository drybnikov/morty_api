import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morty_api/network/model/characters/character_response.dart';
import 'package:morty_api/network/model/characters/page_model.dart';

part 'character_model.freezed.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    required int id,
    required String name,
    @Default(CharacterStatus.unknown) CharacterStatus status,
    @Default('') String species,
    @Default(GenderType.unknown) GenderType gender,
    @Default('') String image,
    @Default(false) bool isFavorite,
  }) = _CharacterModel;
}

@freezed
class CharactersData with _$CharactersData {
  const factory CharactersData({
    @Default([]) List<CharacterModel> characters,
    @Default(PageModel.firstPage()) PageModel pageModel,
  }) = _CharactersData;
}
