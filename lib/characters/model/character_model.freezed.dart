// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CharacterStatus get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  GenderType get gender => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterModelCopyWith<CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterModelCopyWith<$Res> {
  factory $CharacterModelCopyWith(
          CharacterModel value, $Res Function(CharacterModel) then) =
      _$CharacterModelCopyWithImpl<$Res, CharacterModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      CharacterStatus status,
      String species,
      GenderType gender,
      String image,
      bool isFavorite});
}

/// @nodoc
class _$CharacterModelCopyWithImpl<$Res, $Val extends CharacterModel>
    implements $CharacterModelCopyWith<$Res> {
  _$CharacterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? gender = null,
    Object? image = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterStatus,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterModelCopyWith<$Res>
    implements $CharacterModelCopyWith<$Res> {
  factory _$$_CharacterModelCopyWith(
          _$_CharacterModel value, $Res Function(_$_CharacterModel) then) =
      __$$_CharacterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      CharacterStatus status,
      String species,
      GenderType gender,
      String image,
      bool isFavorite});
}

/// @nodoc
class __$$_CharacterModelCopyWithImpl<$Res>
    extends _$CharacterModelCopyWithImpl<$Res, _$_CharacterModel>
    implements _$$_CharacterModelCopyWith<$Res> {
  __$$_CharacterModelCopyWithImpl(
      _$_CharacterModel _value, $Res Function(_$_CharacterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? gender = null,
    Object? image = null,
    Object? isFavorite = null,
  }) {
    return _then(_$_CharacterModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterStatus,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderType,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CharacterModel implements _CharacterModel {
  const _$_CharacterModel(
      {required this.id,
      required this.name,
      this.status = CharacterStatus.unknown,
      this.species = '',
      this.gender = GenderType.unknown,
      this.image = '',
      this.isFavorite = false});

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final CharacterStatus status;
  @override
  @JsonKey()
  final String species;
  @override
  @JsonKey()
  final GenderType gender;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'CharacterModel(id: $id, name: $name, status: $status, species: $species, gender: $gender, image: $image, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, status, species, gender, image, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterModelCopyWith<_$_CharacterModel> get copyWith =>
      __$$_CharacterModelCopyWithImpl<_$_CharacterModel>(this, _$identity);
}

abstract class _CharacterModel implements CharacterModel {
  const factory _CharacterModel(
      {required final int id,
      required final String name,
      final CharacterStatus status,
      final String species,
      final GenderType gender,
      final String image,
      final bool isFavorite}) = _$_CharacterModel;

  @override
  int get id;
  @override
  String get name;
  @override
  CharacterStatus get status;
  @override
  String get species;
  @override
  GenderType get gender;
  @override
  String get image;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterModelCopyWith<_$_CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharactersData {
  List<CharacterModel> get characters => throw _privateConstructorUsedError;
  PageModel get pageModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharactersDataCopyWith<CharactersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersDataCopyWith<$Res> {
  factory $CharactersDataCopyWith(
          CharactersData value, $Res Function(CharactersData) then) =
      _$CharactersDataCopyWithImpl<$Res, CharactersData>;
  @useResult
  $Res call({List<CharacterModel> characters, PageModel pageModel});
}

/// @nodoc
class _$CharactersDataCopyWithImpl<$Res, $Val extends CharactersData>
    implements $CharactersDataCopyWith<$Res> {
  _$CharactersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? pageModel = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
      pageModel: null == pageModel
          ? _value.pageModel
          : pageModel // ignore: cast_nullable_to_non_nullable
              as PageModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharactersDataCopyWith<$Res>
    implements $CharactersDataCopyWith<$Res> {
  factory _$$_CharactersDataCopyWith(
          _$_CharactersData value, $Res Function(_$_CharactersData) then) =
      __$$_CharactersDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CharacterModel> characters, PageModel pageModel});
}

/// @nodoc
class __$$_CharactersDataCopyWithImpl<$Res>
    extends _$CharactersDataCopyWithImpl<$Res, _$_CharactersData>
    implements _$$_CharactersDataCopyWith<$Res> {
  __$$_CharactersDataCopyWithImpl(
      _$_CharactersData _value, $Res Function(_$_CharactersData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? pageModel = null,
  }) {
    return _then(_$_CharactersData(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
      pageModel: null == pageModel
          ? _value.pageModel
          : pageModel // ignore: cast_nullable_to_non_nullable
              as PageModel,
    ));
  }
}

/// @nodoc

class _$_CharactersData implements _CharactersData {
  const _$_CharactersData(
      {final List<CharacterModel> characters = const [],
      this.pageModel = const PageModel.firstPage()})
      : _characters = characters;

  final List<CharacterModel> _characters;
  @override
  @JsonKey()
  List<CharacterModel> get characters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  @JsonKey()
  final PageModel pageModel;

  @override
  String toString() {
    return 'CharactersData(characters: $characters, pageModel: $pageModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersData &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.pageModel, pageModel) ||
                other.pageModel == pageModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters), pageModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharactersDataCopyWith<_$_CharactersData> get copyWith =>
      __$$_CharactersDataCopyWithImpl<_$_CharactersData>(this, _$identity);
}

abstract class _CharactersData implements CharactersData {
  const factory _CharactersData(
      {final List<CharacterModel> characters,
      final PageModel pageModel}) = _$_CharactersData;

  @override
  List<CharacterModel> get characters;
  @override
  PageModel get pageModel;
  @override
  @JsonKey(ignore: true)
  _$$_CharactersDataCopyWith<_$_CharactersData> get copyWith =>
      throw _privateConstructorUsedError;
}
