// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharactersResponse _$CharactersResponseFromJson(Map<String, dynamic> json) =>
    CharactersResponse(
      characters: (json['results'] as List<dynamic>)
          .map((e) => CharacterResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageModel: PageModel.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharactersResponseToJson(CharactersResponse instance) =>
    <String, dynamic>{
      'results': instance.characters,
      'info': instance.pageModel,
    };

_$_CharacterResponse _$$_CharacterResponseFromJson(Map<String, dynamic> json) =>
    _$_CharacterResponse(
      id: json['id'] as int,
      name: json['name'] as String,
      status: $enumDecodeNullable(_$CharacterStatusEnumMap, json['status']) ??
          CharacterStatus.unknown,
      species: json['species'] as String? ?? '',
      gender: $enumDecodeNullable(_$GenderTypeEnumMap, json['gender']) ??
          GenderType.unknown,
      image: json['image'] as String? ?? '',
    );

Map<String, dynamic> _$$_CharacterResponseToJson(
        _$_CharacterResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': _$CharacterStatusEnumMap[instance.status]!,
      'species': instance.species,
      'gender': _$GenderTypeEnumMap[instance.gender]!,
      'image': instance.image,
    };

const _$CharacterStatusEnumMap = {
  CharacterStatus.alive: 'Alive',
  CharacterStatus.dead: 'Dead',
  CharacterStatus.unknown: 'unknown',
};

const _$GenderTypeEnumMap = {
  GenderType.female: 'Female',
  GenderType.male: 'Male',
  GenderType.genderless: 'Genderless',
  GenderType.unknown: 'unknown',
};
