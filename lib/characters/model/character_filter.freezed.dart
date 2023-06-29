// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterFilter {
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get race => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterFilterCopyWith<CharacterFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterFilterCopyWith<$Res> {
  factory $CharacterFilterCopyWith(
          CharacterFilter value, $Res Function(CharacterFilter) then) =
      _$CharacterFilterCopyWithImpl<$Res, CharacterFilter>;
  @useResult
  $Res call({String? name, String? status, String? gender, String? race});
}

/// @nodoc
class _$CharacterFilterCopyWithImpl<$Res, $Val extends CharacterFilter>
    implements $CharacterFilterCopyWith<$Res> {
  _$CharacterFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
    Object? gender = freezed,
    Object? race = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      race: freezed == race
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharacterFilterCopyWith<$Res>
    implements $CharacterFilterCopyWith<$Res> {
  factory _$$_CharacterFilterCopyWith(
          _$_CharacterFilter value, $Res Function(_$_CharacterFilter) then) =
      __$$_CharacterFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? status, String? gender, String? race});
}

/// @nodoc
class __$$_CharacterFilterCopyWithImpl<$Res>
    extends _$CharacterFilterCopyWithImpl<$Res, _$_CharacterFilter>
    implements _$$_CharacterFilterCopyWith<$Res> {
  __$$_CharacterFilterCopyWithImpl(
      _$_CharacterFilter _value, $Res Function(_$_CharacterFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
    Object? gender = freezed,
    Object? race = freezed,
  }) {
    return _then(_$_CharacterFilter(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      race: freezed == race
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CharacterFilter implements _CharacterFilter {
  const _$_CharacterFilter({this.name, this.status, this.gender, this.race});

  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? gender;
  @override
  final String? race;

  @override
  String toString() {
    return 'CharacterFilter(name: $name, status: $status, gender: $gender, race: $race)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterFilter &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.race, race) || other.race == race));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, status, gender, race);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterFilterCopyWith<_$_CharacterFilter> get copyWith =>
      __$$_CharacterFilterCopyWithImpl<_$_CharacterFilter>(this, _$identity);
}

abstract class _CharacterFilter implements CharacterFilter {
  const factory _CharacterFilter(
      {final String? name,
      final String? status,
      final String? gender,
      final String? race}) = _$_CharacterFilter;

  @override
  String? get name;
  @override
  String? get status;
  @override
  String? get gender;
  @override
  String? get race;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterFilterCopyWith<_$_CharacterFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
