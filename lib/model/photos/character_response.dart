import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:morty_api/model/photos/page_model.dart';

part 'character_response.freezed.dart';

part 'character_response.g.dart';

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

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
}

enum GenderType {
  @JsonValue('Female')
  female,
  @JsonValue('Male')
  male,
  @JsonValue('Genderless')
  genderless,
  unknown;
}

enum CharacterStatus {
  @JsonValue('Alive')
  alive,
  @JsonValue('Dead')
  dead,
  unknown;
}

@JsonSerializable()
class CharactersResponse extends Equatable {
  @JsonKey(name: 'results')
  final List<CharacterModel> characters;
  @JsonKey(name: 'info')
  final PageModel pageModel;

  const CharactersResponse({
    required this.characters,
    required this.pageModel,
  });

  const CharactersResponse.empty({
    this.characters = const [],
    this.pageModel = const PageModel.firstPage(),
  });

  @override
  List<Object?> get props => [characters, pageModel];

  @override
  String toString() =>
      'CharactersResponse(characters:$characters, pageModel:$pageModel)';

  factory CharactersResponse.fromJson(Map<String, dynamic> json) =>
      _$CharactersResponseFromJson(json);
}
