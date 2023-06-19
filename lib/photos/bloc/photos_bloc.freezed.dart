// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhotosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageModel pageModel) fetchPhotos,
    required TResult Function() getNextPage,
    required TResult Function() getPrevPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageModel pageModel)? fetchPhotos,
    TResult? Function()? getNextPage,
    TResult? Function()? getPrevPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageModel pageModel)? fetchPhotos,
    TResult Function()? getNextPage,
    TResult Function()? getPrevPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPhotos value) fetchPhotos,
    required TResult Function(_getNextPage value) getNextPage,
    required TResult Function(_getPrevPage value) getPrevPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchPhotos value)? fetchPhotos,
    TResult? Function(_getNextPage value)? getNextPage,
    TResult? Function(_getPrevPage value)? getPrevPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPhotos value)? fetchPhotos,
    TResult Function(_getNextPage value)? getNextPage,
    TResult Function(_getPrevPage value)? getPrevPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_fetchPhotos extends _fetchPhotos {
  const _$_fetchPhotos({required this.pageModel}) : super._();

  @override
  final PageModel pageModel;

  @override
  String toString() {
    return 'PhotosEvent.fetchPhotos(pageModel: $pageModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_fetchPhotos &&
            (identical(other.pageModel, pageModel) ||
                other.pageModel == pageModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageModel);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageModel pageModel) fetchPhotos,
    required TResult Function() getNextPage,
    required TResult Function() getPrevPage,
  }) {
    return fetchPhotos(pageModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageModel pageModel)? fetchPhotos,
    TResult? Function()? getNextPage,
    TResult? Function()? getPrevPage,
  }) {
    return fetchPhotos?.call(pageModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageModel pageModel)? fetchPhotos,
    TResult Function()? getNextPage,
    TResult Function()? getPrevPage,
    required TResult orElse(),
  }) {
    if (fetchPhotos != null) {
      return fetchPhotos(pageModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPhotos value) fetchPhotos,
    required TResult Function(_getNextPage value) getNextPage,
    required TResult Function(_getPrevPage value) getPrevPage,
  }) {
    return fetchPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchPhotos value)? fetchPhotos,
    TResult? Function(_getNextPage value)? getNextPage,
    TResult? Function(_getPrevPage value)? getPrevPage,
  }) {
    return fetchPhotos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPhotos value)? fetchPhotos,
    TResult Function(_getNextPage value)? getNextPage,
    TResult Function(_getPrevPage value)? getPrevPage,
    required TResult orElse(),
  }) {
    if (fetchPhotos != null) {
      return fetchPhotos(this);
    }
    return orElse();
  }
}

abstract class _fetchPhotos extends PhotosEvent {
  const factory _fetchPhotos({required final PageModel pageModel}) =
      _$_fetchPhotos;
  const _fetchPhotos._() : super._();

  PageModel get pageModel;
}

/// @nodoc

class _$_getNextPage extends _getNextPage {
  const _$_getNextPage() : super._();

  @override
  String toString() {
    return 'PhotosEvent.getNextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getNextPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageModel pageModel) fetchPhotos,
    required TResult Function() getNextPage,
    required TResult Function() getPrevPage,
  }) {
    return getNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageModel pageModel)? fetchPhotos,
    TResult? Function()? getNextPage,
    TResult? Function()? getPrevPage,
  }) {
    return getNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageModel pageModel)? fetchPhotos,
    TResult Function()? getNextPage,
    TResult Function()? getPrevPage,
    required TResult orElse(),
  }) {
    if (getNextPage != null) {
      return getNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPhotos value) fetchPhotos,
    required TResult Function(_getNextPage value) getNextPage,
    required TResult Function(_getPrevPage value) getPrevPage,
  }) {
    return getNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchPhotos value)? fetchPhotos,
    TResult? Function(_getNextPage value)? getNextPage,
    TResult? Function(_getPrevPage value)? getPrevPage,
  }) {
    return getNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPhotos value)? fetchPhotos,
    TResult Function(_getNextPage value)? getNextPage,
    TResult Function(_getPrevPage value)? getPrevPage,
    required TResult orElse(),
  }) {
    if (getNextPage != null) {
      return getNextPage(this);
    }
    return orElse();
  }
}

abstract class _getNextPage extends PhotosEvent {
  const factory _getNextPage() = _$_getNextPage;
  const _getNextPage._() : super._();
}

/// @nodoc

class _$_getPrevPage extends _getPrevPage {
  const _$_getPrevPage() : super._();

  @override
  String toString() {
    return 'PhotosEvent.getPrevPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getPrevPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageModel pageModel) fetchPhotos,
    required TResult Function() getNextPage,
    required TResult Function() getPrevPage,
  }) {
    return getPrevPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageModel pageModel)? fetchPhotos,
    TResult? Function()? getNextPage,
    TResult? Function()? getPrevPage,
  }) {
    return getPrevPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageModel pageModel)? fetchPhotos,
    TResult Function()? getNextPage,
    TResult Function()? getPrevPage,
    required TResult orElse(),
  }) {
    if (getPrevPage != null) {
      return getPrevPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPhotos value) fetchPhotos,
    required TResult Function(_getNextPage value) getNextPage,
    required TResult Function(_getPrevPage value) getPrevPage,
  }) {
    return getPrevPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchPhotos value)? fetchPhotos,
    TResult? Function(_getNextPage value)? getNextPage,
    TResult? Function(_getPrevPage value)? getPrevPage,
  }) {
    return getPrevPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPhotos value)? fetchPhotos,
    TResult Function(_getNextPage value)? getNextPage,
    TResult Function(_getPrevPage value)? getPrevPage,
    required TResult orElse(),
  }) {
    if (getPrevPage != null) {
      return getPrevPage(this);
    }
    return orElse();
  }
}

abstract class _getPrevPage extends PhotosEvent {
  const factory _getPrevPage() = _$_getPrevPage;
  const _getPrevPage._() : super._();
}

/// @nodoc
mixin _$PhotosState {
  CharactersResponse get characters => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharactersResponse characters) loading,
    required TResult Function(CharactersResponse characters) initialized,
    required TResult Function(
            CharactersResponse characters, String message, String? errorCode)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharactersResponse characters)? loading,
    TResult? Function(CharactersResponse characters)? initialized,
    TResult? Function(
            CharactersResponse characters, String message, String? errorCode)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersResponse characters)? loading,
    TResult Function(CharactersResponse characters)? initialized,
    TResult Function(
            CharactersResponse characters, String message, String? errorCode)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_initialized value) initialized,
    required TResult Function(photosError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_initialized value)? initialized,
    TResult? Function(photosError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_initialized value)? initialized,
    TResult Function(photosError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_loading extends _loading {
  const _$_loading({this.characters = const CharactersResponse.empty()})
      : super._();

  @override
  @JsonKey()
  final CharactersResponse characters;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loading &&
            (identical(other.characters, characters) ||
                other.characters == characters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characters);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharactersResponse characters) loading,
    required TResult Function(CharactersResponse characters) initialized,
    required TResult Function(
            CharactersResponse characters, String message, String? errorCode)
        error,
  }) {
    return loading(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharactersResponse characters)? loading,
    TResult? Function(CharactersResponse characters)? initialized,
    TResult? Function(
            CharactersResponse characters, String message, String? errorCode)?
        error,
  }) {
    return loading?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersResponse characters)? loading,
    TResult Function(CharactersResponse characters)? initialized,
    TResult Function(
            CharactersResponse characters, String message, String? errorCode)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_initialized value) initialized,
    required TResult Function(photosError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_initialized value)? initialized,
    TResult? Function(photosError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_initialized value)? initialized,
    TResult Function(photosError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading extends PhotosState {
  const factory _loading({final CharactersResponse characters}) = _$_loading;
  const _loading._() : super._();

  @override
  CharactersResponse get characters;
}

/// @nodoc

class _$_initialized extends _initialized {
  const _$_initialized({required this.characters}) : super._();

  @override
  final CharactersResponse characters;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_initialized &&
            (identical(other.characters, characters) ||
                other.characters == characters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characters);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharactersResponse characters) loading,
    required TResult Function(CharactersResponse characters) initialized,
    required TResult Function(
            CharactersResponse characters, String message, String? errorCode)
        error,
  }) {
    return initialized(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharactersResponse characters)? loading,
    TResult? Function(CharactersResponse characters)? initialized,
    TResult? Function(
            CharactersResponse characters, String message, String? errorCode)?
        error,
  }) {
    return initialized?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersResponse characters)? loading,
    TResult Function(CharactersResponse characters)? initialized,
    TResult Function(
            CharactersResponse characters, String message, String? errorCode)?
        error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_initialized value) initialized,
    required TResult Function(photosError value) error,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_initialized value)? initialized,
    TResult? Function(photosError value)? error,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_initialized value)? initialized,
    TResult Function(photosError value)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _initialized extends PhotosState {
  const factory _initialized({required final CharactersResponse characters}) =
      _$_initialized;
  const _initialized._() : super._();

  @override
  CharactersResponse get characters;
}

/// @nodoc

class _$photosError extends photosError {
  const _$photosError(
      {required this.characters, this.message = 'Error', this.errorCode})
      : super._();

  @override
  final CharactersResponse characters;
  @override
  @JsonKey()
  final String message;
  @override
  final String? errorCode;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$photosError &&
            (identical(other.characters, characters) ||
                other.characters == characters) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characters, message, errorCode);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharactersResponse characters) loading,
    required TResult Function(CharactersResponse characters) initialized,
    required TResult Function(
            CharactersResponse characters, String message, String? errorCode)
        error,
  }) {
    return error(characters, message, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharactersResponse characters)? loading,
    TResult? Function(CharactersResponse characters)? initialized,
    TResult? Function(
            CharactersResponse characters, String message, String? errorCode)?
        error,
  }) {
    return error?.call(characters, message, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersResponse characters)? loading,
    TResult Function(CharactersResponse characters)? initialized,
    TResult Function(
            CharactersResponse characters, String message, String? errorCode)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(characters, message, errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_initialized value) initialized,
    required TResult Function(photosError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_initialized value)? initialized,
    TResult? Function(photosError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_initialized value)? initialized,
    TResult Function(photosError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class photosError extends PhotosState {
  const factory photosError(
      {required final CharactersResponse characters,
      final String message,
      final String? errorCode}) = _$photosError;
  const photosError._() : super._();

  @override
  CharactersResponse get characters;
  String get message;
  String? get errorCode;
}
