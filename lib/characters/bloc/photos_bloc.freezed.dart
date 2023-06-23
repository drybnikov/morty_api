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
    required TResult Function(PageModel pageModel, CharacterFilter? filter)
        fetchPhotos,
    required TResult Function() getNextPage,
    required TResult Function() getPrevPage,
    required TResult Function(CharacterModel character) updateFavorite,
    required TResult Function(List<int> favorites) updateFavorites,
    required TResult Function(CharacterFilter filter) filterCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageModel pageModel, CharacterFilter? filter)?
        fetchPhotos,
    TResult? Function()? getNextPage,
    TResult? Function()? getPrevPage,
    TResult? Function(CharacterModel character)? updateFavorite,
    TResult? Function(List<int> favorites)? updateFavorites,
    TResult? Function(CharacterFilter filter)? filterCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageModel pageModel, CharacterFilter? filter)? fetchPhotos,
    TResult Function()? getNextPage,
    TResult Function()? getPrevPage,
    TResult Function(CharacterModel character)? updateFavorite,
    TResult Function(List<int> favorites)? updateFavorites,
    TResult Function(CharacterFilter filter)? filterCharacters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPhotos value) fetchPhotos,
    required TResult Function(_getNextPage value) getNextPage,
    required TResult Function(_getPrevPage value) getPrevPage,
    required TResult Function(_updateFavorite value) updateFavorite,
    required TResult Function(_updateFavorites value) updateFavorites,
    required TResult Function(_filterCharacters value) filterCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchPhotos value)? fetchPhotos,
    TResult? Function(_getNextPage value)? getNextPage,
    TResult? Function(_getPrevPage value)? getPrevPage,
    TResult? Function(_updateFavorite value)? updateFavorite,
    TResult? Function(_updateFavorites value)? updateFavorites,
    TResult? Function(_filterCharacters value)? filterCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPhotos value)? fetchPhotos,
    TResult Function(_getNextPage value)? getNextPage,
    TResult Function(_getPrevPage value)? getPrevPage,
    TResult Function(_updateFavorite value)? updateFavorite,
    TResult Function(_updateFavorites value)? updateFavorites,
    TResult Function(_filterCharacters value)? filterCharacters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_fetchPhotos extends _fetchPhotos {
  const _$_fetchPhotos({required this.pageModel, this.filter}) : super._();

  @override
  final PageModel pageModel;
  @override
  final CharacterFilter? filter;

  @override
  String toString() {
    return 'PhotosEvent.fetchPhotos(pageModel: $pageModel, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_fetchPhotos &&
            (identical(other.pageModel, pageModel) ||
                other.pageModel == pageModel) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageModel, filter);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageModel pageModel, CharacterFilter? filter)
        fetchPhotos,
    required TResult Function() getNextPage,
    required TResult Function() getPrevPage,
    required TResult Function(CharacterModel character) updateFavorite,
    required TResult Function(List<int> favorites) updateFavorites,
    required TResult Function(CharacterFilter filter) filterCharacters,
  }) {
    return fetchPhotos(pageModel, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageModel pageModel, CharacterFilter? filter)?
        fetchPhotos,
    TResult? Function()? getNextPage,
    TResult? Function()? getPrevPage,
    TResult? Function(CharacterModel character)? updateFavorite,
    TResult? Function(List<int> favorites)? updateFavorites,
    TResult? Function(CharacterFilter filter)? filterCharacters,
  }) {
    return fetchPhotos?.call(pageModel, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageModel pageModel, CharacterFilter? filter)? fetchPhotos,
    TResult Function()? getNextPage,
    TResult Function()? getPrevPage,
    TResult Function(CharacterModel character)? updateFavorite,
    TResult Function(List<int> favorites)? updateFavorites,
    TResult Function(CharacterFilter filter)? filterCharacters,
    required TResult orElse(),
  }) {
    if (fetchPhotos != null) {
      return fetchPhotos(pageModel, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPhotos value) fetchPhotos,
    required TResult Function(_getNextPage value) getNextPage,
    required TResult Function(_getPrevPage value) getPrevPage,
    required TResult Function(_updateFavorite value) updateFavorite,
    required TResult Function(_updateFavorites value) updateFavorites,
    required TResult Function(_filterCharacters value) filterCharacters,
  }) {
    return fetchPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchPhotos value)? fetchPhotos,
    TResult? Function(_getNextPage value)? getNextPage,
    TResult? Function(_getPrevPage value)? getPrevPage,
    TResult? Function(_updateFavorite value)? updateFavorite,
    TResult? Function(_updateFavorites value)? updateFavorites,
    TResult? Function(_filterCharacters value)? filterCharacters,
  }) {
    return fetchPhotos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPhotos value)? fetchPhotos,
    TResult Function(_getNextPage value)? getNextPage,
    TResult Function(_getPrevPage value)? getPrevPage,
    TResult Function(_updateFavorite value)? updateFavorite,
    TResult Function(_updateFavorites value)? updateFavorites,
    TResult Function(_filterCharacters value)? filterCharacters,
    required TResult orElse(),
  }) {
    if (fetchPhotos != null) {
      return fetchPhotos(this);
    }
    return orElse();
  }
}

abstract class _fetchPhotos extends PhotosEvent {
  const factory _fetchPhotos(
      {required final PageModel pageModel,
      final CharacterFilter? filter}) = _$_fetchPhotos;
  const _fetchPhotos._() : super._();

  PageModel get pageModel;
  CharacterFilter? get filter;
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
    required TResult Function(PageModel pageModel, CharacterFilter? filter)
        fetchPhotos,
    required TResult Function() getNextPage,
    required TResult Function() getPrevPage,
    required TResult Function(CharacterModel character) updateFavorite,
    required TResult Function(List<int> favorites) updateFavorites,
    required TResult Function(CharacterFilter filter) filterCharacters,
  }) {
    return getNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageModel pageModel, CharacterFilter? filter)?
        fetchPhotos,
    TResult? Function()? getNextPage,
    TResult? Function()? getPrevPage,
    TResult? Function(CharacterModel character)? updateFavorite,
    TResult? Function(List<int> favorites)? updateFavorites,
    TResult? Function(CharacterFilter filter)? filterCharacters,
  }) {
    return getNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageModel pageModel, CharacterFilter? filter)? fetchPhotos,
    TResult Function()? getNextPage,
    TResult Function()? getPrevPage,
    TResult Function(CharacterModel character)? updateFavorite,
    TResult Function(List<int> favorites)? updateFavorites,
    TResult Function(CharacterFilter filter)? filterCharacters,
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
    required TResult Function(_updateFavorite value) updateFavorite,
    required TResult Function(_updateFavorites value) updateFavorites,
    required TResult Function(_filterCharacters value) filterCharacters,
  }) {
    return getNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchPhotos value)? fetchPhotos,
    TResult? Function(_getNextPage value)? getNextPage,
    TResult? Function(_getPrevPage value)? getPrevPage,
    TResult? Function(_updateFavorite value)? updateFavorite,
    TResult? Function(_updateFavorites value)? updateFavorites,
    TResult? Function(_filterCharacters value)? filterCharacters,
  }) {
    return getNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPhotos value)? fetchPhotos,
    TResult Function(_getNextPage value)? getNextPage,
    TResult Function(_getPrevPage value)? getPrevPage,
    TResult Function(_updateFavorite value)? updateFavorite,
    TResult Function(_updateFavorites value)? updateFavorites,
    TResult Function(_filterCharacters value)? filterCharacters,
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
    required TResult Function(PageModel pageModel, CharacterFilter? filter)
        fetchPhotos,
    required TResult Function() getNextPage,
    required TResult Function() getPrevPage,
    required TResult Function(CharacterModel character) updateFavorite,
    required TResult Function(List<int> favorites) updateFavorites,
    required TResult Function(CharacterFilter filter) filterCharacters,
  }) {
    return getPrevPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageModel pageModel, CharacterFilter? filter)?
        fetchPhotos,
    TResult? Function()? getNextPage,
    TResult? Function()? getPrevPage,
    TResult? Function(CharacterModel character)? updateFavorite,
    TResult? Function(List<int> favorites)? updateFavorites,
    TResult? Function(CharacterFilter filter)? filterCharacters,
  }) {
    return getPrevPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageModel pageModel, CharacterFilter? filter)? fetchPhotos,
    TResult Function()? getNextPage,
    TResult Function()? getPrevPage,
    TResult Function(CharacterModel character)? updateFavorite,
    TResult Function(List<int> favorites)? updateFavorites,
    TResult Function(CharacterFilter filter)? filterCharacters,
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
    required TResult Function(_updateFavorite value) updateFavorite,
    required TResult Function(_updateFavorites value) updateFavorites,
    required TResult Function(_filterCharacters value) filterCharacters,
  }) {
    return getPrevPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchPhotos value)? fetchPhotos,
    TResult? Function(_getNextPage value)? getNextPage,
    TResult? Function(_getPrevPage value)? getPrevPage,
    TResult? Function(_updateFavorite value)? updateFavorite,
    TResult? Function(_updateFavorites value)? updateFavorites,
    TResult? Function(_filterCharacters value)? filterCharacters,
  }) {
    return getPrevPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPhotos value)? fetchPhotos,
    TResult Function(_getNextPage value)? getNextPage,
    TResult Function(_getPrevPage value)? getPrevPage,
    TResult Function(_updateFavorite value)? updateFavorite,
    TResult Function(_updateFavorites value)? updateFavorites,
    TResult Function(_filterCharacters value)? filterCharacters,
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

class _$_updateFavorite extends _updateFavorite {
  const _$_updateFavorite(this.character) : super._();

  @override
  final CharacterModel character;

  @override
  String toString() {
    return 'PhotosEvent.updateFavorite(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_updateFavorite &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageModel pageModel, CharacterFilter? filter)
        fetchPhotos,
    required TResult Function() getNextPage,
    required TResult Function() getPrevPage,
    required TResult Function(CharacterModel character) updateFavorite,
    required TResult Function(List<int> favorites) updateFavorites,
    required TResult Function(CharacterFilter filter) filterCharacters,
  }) {
    return updateFavorite(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageModel pageModel, CharacterFilter? filter)?
        fetchPhotos,
    TResult? Function()? getNextPage,
    TResult? Function()? getPrevPage,
    TResult? Function(CharacterModel character)? updateFavorite,
    TResult? Function(List<int> favorites)? updateFavorites,
    TResult? Function(CharacterFilter filter)? filterCharacters,
  }) {
    return updateFavorite?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageModel pageModel, CharacterFilter? filter)? fetchPhotos,
    TResult Function()? getNextPage,
    TResult Function()? getPrevPage,
    TResult Function(CharacterModel character)? updateFavorite,
    TResult Function(List<int> favorites)? updateFavorites,
    TResult Function(CharacterFilter filter)? filterCharacters,
    required TResult orElse(),
  }) {
    if (updateFavorite != null) {
      return updateFavorite(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPhotos value) fetchPhotos,
    required TResult Function(_getNextPage value) getNextPage,
    required TResult Function(_getPrevPage value) getPrevPage,
    required TResult Function(_updateFavorite value) updateFavorite,
    required TResult Function(_updateFavorites value) updateFavorites,
    required TResult Function(_filterCharacters value) filterCharacters,
  }) {
    return updateFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchPhotos value)? fetchPhotos,
    TResult? Function(_getNextPage value)? getNextPage,
    TResult? Function(_getPrevPage value)? getPrevPage,
    TResult? Function(_updateFavorite value)? updateFavorite,
    TResult? Function(_updateFavorites value)? updateFavorites,
    TResult? Function(_filterCharacters value)? filterCharacters,
  }) {
    return updateFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPhotos value)? fetchPhotos,
    TResult Function(_getNextPage value)? getNextPage,
    TResult Function(_getPrevPage value)? getPrevPage,
    TResult Function(_updateFavorite value)? updateFavorite,
    TResult Function(_updateFavorites value)? updateFavorites,
    TResult Function(_filterCharacters value)? filterCharacters,
    required TResult orElse(),
  }) {
    if (updateFavorite != null) {
      return updateFavorite(this);
    }
    return orElse();
  }
}

abstract class _updateFavorite extends PhotosEvent {
  const factory _updateFavorite(final CharacterModel character) =
      _$_updateFavorite;
  const _updateFavorite._() : super._();

  CharacterModel get character;
}

/// @nodoc

class _$_updateFavorites extends _updateFavorites {
  const _$_updateFavorites(final List<int> favorites)
      : _favorites = favorites,
        super._();

  final List<int> _favorites;
  @override
  List<int> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'PhotosEvent.updateFavorites(favorites: $favorites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_updateFavorites &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favorites));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageModel pageModel, CharacterFilter? filter)
        fetchPhotos,
    required TResult Function() getNextPage,
    required TResult Function() getPrevPage,
    required TResult Function(CharacterModel character) updateFavorite,
    required TResult Function(List<int> favorites) updateFavorites,
    required TResult Function(CharacterFilter filter) filterCharacters,
  }) {
    return updateFavorites(favorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageModel pageModel, CharacterFilter? filter)?
        fetchPhotos,
    TResult? Function()? getNextPage,
    TResult? Function()? getPrevPage,
    TResult? Function(CharacterModel character)? updateFavorite,
    TResult? Function(List<int> favorites)? updateFavorites,
    TResult? Function(CharacterFilter filter)? filterCharacters,
  }) {
    return updateFavorites?.call(favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageModel pageModel, CharacterFilter? filter)? fetchPhotos,
    TResult Function()? getNextPage,
    TResult Function()? getPrevPage,
    TResult Function(CharacterModel character)? updateFavorite,
    TResult Function(List<int> favorites)? updateFavorites,
    TResult Function(CharacterFilter filter)? filterCharacters,
    required TResult orElse(),
  }) {
    if (updateFavorites != null) {
      return updateFavorites(favorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPhotos value) fetchPhotos,
    required TResult Function(_getNextPage value) getNextPage,
    required TResult Function(_getPrevPage value) getPrevPage,
    required TResult Function(_updateFavorite value) updateFavorite,
    required TResult Function(_updateFavorites value) updateFavorites,
    required TResult Function(_filterCharacters value) filterCharacters,
  }) {
    return updateFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchPhotos value)? fetchPhotos,
    TResult? Function(_getNextPage value)? getNextPage,
    TResult? Function(_getPrevPage value)? getPrevPage,
    TResult? Function(_updateFavorite value)? updateFavorite,
    TResult? Function(_updateFavorites value)? updateFavorites,
    TResult? Function(_filterCharacters value)? filterCharacters,
  }) {
    return updateFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPhotos value)? fetchPhotos,
    TResult Function(_getNextPage value)? getNextPage,
    TResult Function(_getPrevPage value)? getPrevPage,
    TResult Function(_updateFavorite value)? updateFavorite,
    TResult Function(_updateFavorites value)? updateFavorites,
    TResult Function(_filterCharacters value)? filterCharacters,
    required TResult orElse(),
  }) {
    if (updateFavorites != null) {
      return updateFavorites(this);
    }
    return orElse();
  }
}

abstract class _updateFavorites extends PhotosEvent {
  const factory _updateFavorites(final List<int> favorites) =
      _$_updateFavorites;
  const _updateFavorites._() : super._();

  List<int> get favorites;
}

/// @nodoc

class _$_filterCharacters extends _filterCharacters {
  const _$_filterCharacters({required this.filter}) : super._();

  @override
  final CharacterFilter filter;

  @override
  String toString() {
    return 'PhotosEvent.filterCharacters(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_filterCharacters &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageModel pageModel, CharacterFilter? filter)
        fetchPhotos,
    required TResult Function() getNextPage,
    required TResult Function() getPrevPage,
    required TResult Function(CharacterModel character) updateFavorite,
    required TResult Function(List<int> favorites) updateFavorites,
    required TResult Function(CharacterFilter filter) filterCharacters,
  }) {
    return filterCharacters(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageModel pageModel, CharacterFilter? filter)?
        fetchPhotos,
    TResult? Function()? getNextPage,
    TResult? Function()? getPrevPage,
    TResult? Function(CharacterModel character)? updateFavorite,
    TResult? Function(List<int> favorites)? updateFavorites,
    TResult? Function(CharacterFilter filter)? filterCharacters,
  }) {
    return filterCharacters?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageModel pageModel, CharacterFilter? filter)? fetchPhotos,
    TResult Function()? getNextPage,
    TResult Function()? getPrevPage,
    TResult Function(CharacterModel character)? updateFavorite,
    TResult Function(List<int> favorites)? updateFavorites,
    TResult Function(CharacterFilter filter)? filterCharacters,
    required TResult orElse(),
  }) {
    if (filterCharacters != null) {
      return filterCharacters(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchPhotos value) fetchPhotos,
    required TResult Function(_getNextPage value) getNextPage,
    required TResult Function(_getPrevPage value) getPrevPage,
    required TResult Function(_updateFavorite value) updateFavorite,
    required TResult Function(_updateFavorites value) updateFavorites,
    required TResult Function(_filterCharacters value) filterCharacters,
  }) {
    return filterCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchPhotos value)? fetchPhotos,
    TResult? Function(_getNextPage value)? getNextPage,
    TResult? Function(_getPrevPage value)? getPrevPage,
    TResult? Function(_updateFavorite value)? updateFavorite,
    TResult? Function(_updateFavorites value)? updateFavorites,
    TResult? Function(_filterCharacters value)? filterCharacters,
  }) {
    return filterCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchPhotos value)? fetchPhotos,
    TResult Function(_getNextPage value)? getNextPage,
    TResult Function(_getPrevPage value)? getPrevPage,
    TResult Function(_updateFavorite value)? updateFavorite,
    TResult Function(_updateFavorites value)? updateFavorites,
    TResult Function(_filterCharacters value)? filterCharacters,
    required TResult orElse(),
  }) {
    if (filterCharacters != null) {
      return filterCharacters(this);
    }
    return orElse();
  }
}

abstract class _filterCharacters extends PhotosEvent {
  const factory _filterCharacters({required final CharacterFilter filter}) =
      _$_filterCharacters;
  const _filterCharacters._() : super._();

  CharacterFilter get filter;
}

/// @nodoc
mixin _$PhotosState {
  CharactersData get characters => throw _privateConstructorUsedError;
  CharacterFilter? get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CharactersData characters, CharacterFilter? filter)
        loading,
    required TResult Function(
            CharactersData characters, CharacterFilter? filter)
        initialized,
    required TResult Function(CharactersData characters,
            CharacterFilter? filter, String message, String? errorCode)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharactersData characters, CharacterFilter? filter)?
        loading,
    TResult? Function(CharactersData characters, CharacterFilter? filter)?
        initialized,
    TResult? Function(CharactersData characters, CharacterFilter? filter,
            String message, String? errorCode)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersData characters, CharacterFilter? filter)?
        loading,
    TResult Function(CharactersData characters, CharacterFilter? filter)?
        initialized,
    TResult Function(CharactersData characters, CharacterFilter? filter,
            String message, String? errorCode)?
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

  @JsonKey(ignore: true)
  $PhotosStateCopyWith<PhotosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosStateCopyWith<$Res> {
  factory $PhotosStateCopyWith(
          PhotosState value, $Res Function(PhotosState) then) =
      _$PhotosStateCopyWithImpl<$Res, PhotosState>;
  @useResult
  $Res call({CharactersData characters, CharacterFilter? filter});

  $CharactersDataCopyWith<$Res> get characters;
  $CharacterFilterCopyWith<$Res>? get filter;
}

/// @nodoc
class _$PhotosStateCopyWithImpl<$Res, $Val extends PhotosState>
    implements $PhotosStateCopyWith<$Res> {
  _$PhotosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as CharactersData,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharacterFilter?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharactersDataCopyWith<$Res> get characters {
    return $CharactersDataCopyWith<$Res>(_value.characters, (value) {
      return _then(_value.copyWith(characters: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterFilterCopyWith<$Res>? get filter {
    if (_value.filter == null) {
      return null;
    }

    return $CharacterFilterCopyWith<$Res>(_value.filter!, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_loadingCopyWith<$Res> implements $PhotosStateCopyWith<$Res> {
  factory _$$_loadingCopyWith(
          _$_loading value, $Res Function(_$_loading) then) =
      __$$_loadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharactersData characters, CharacterFilter? filter});

  @override
  $CharactersDataCopyWith<$Res> get characters;
  @override
  $CharacterFilterCopyWith<$Res>? get filter;
}

/// @nodoc
class __$$_loadingCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res, _$_loading>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? filter = freezed,
  }) {
    return _then(_$_loading(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as CharactersData,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharacterFilter?,
    ));
  }
}

/// @nodoc

class _$_loading extends _loading {
  const _$_loading({this.characters = const CharactersData(), this.filter})
      : super._();

  @override
  @JsonKey()
  final CharactersData characters;
  @override
  final CharacterFilter? filter;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_loading &&
            (identical(other.characters, characters) ||
                other.characters == characters) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characters, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_loadingCopyWith<_$_loading> get copyWith =>
      __$$_loadingCopyWithImpl<_$_loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CharactersData characters, CharacterFilter? filter)
        loading,
    required TResult Function(
            CharactersData characters, CharacterFilter? filter)
        initialized,
    required TResult Function(CharactersData characters,
            CharacterFilter? filter, String message, String? errorCode)
        error,
  }) {
    return loading(characters, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharactersData characters, CharacterFilter? filter)?
        loading,
    TResult? Function(CharactersData characters, CharacterFilter? filter)?
        initialized,
    TResult? Function(CharactersData characters, CharacterFilter? filter,
            String message, String? errorCode)?
        error,
  }) {
    return loading?.call(characters, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersData characters, CharacterFilter? filter)?
        loading,
    TResult Function(CharactersData characters, CharacterFilter? filter)?
        initialized,
    TResult Function(CharactersData characters, CharacterFilter? filter,
            String message, String? errorCode)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(characters, filter);
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
  const factory _loading(
      {final CharactersData characters,
      final CharacterFilter? filter}) = _$_loading;
  const _loading._() : super._();

  @override
  CharactersData get characters;
  @override
  CharacterFilter? get filter;
  @override
  @JsonKey(ignore: true)
  _$$_loadingCopyWith<_$_loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_initializedCopyWith<$Res>
    implements $PhotosStateCopyWith<$Res> {
  factory _$$_initializedCopyWith(
          _$_initialized value, $Res Function(_$_initialized) then) =
      __$$_initializedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharactersData characters, CharacterFilter? filter});

  @override
  $CharactersDataCopyWith<$Res> get characters;
  @override
  $CharacterFilterCopyWith<$Res>? get filter;
}

/// @nodoc
class __$$_initializedCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res, _$_initialized>
    implements _$$_initializedCopyWith<$Res> {
  __$$_initializedCopyWithImpl(
      _$_initialized _value, $Res Function(_$_initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? filter = freezed,
  }) {
    return _then(_$_initialized(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as CharactersData,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharacterFilter?,
    ));
  }
}

/// @nodoc

class _$_initialized extends _initialized {
  const _$_initialized({required this.characters, this.filter}) : super._();

  @override
  final CharactersData characters;
  @override
  final CharacterFilter? filter;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_initialized &&
            (identical(other.characters, characters) ||
                other.characters == characters) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characters, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_initializedCopyWith<_$_initialized> get copyWith =>
      __$$_initializedCopyWithImpl<_$_initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CharactersData characters, CharacterFilter? filter)
        loading,
    required TResult Function(
            CharactersData characters, CharacterFilter? filter)
        initialized,
    required TResult Function(CharactersData characters,
            CharacterFilter? filter, String message, String? errorCode)
        error,
  }) {
    return initialized(characters, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharactersData characters, CharacterFilter? filter)?
        loading,
    TResult? Function(CharactersData characters, CharacterFilter? filter)?
        initialized,
    TResult? Function(CharactersData characters, CharacterFilter? filter,
            String message, String? errorCode)?
        error,
  }) {
    return initialized?.call(characters, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersData characters, CharacterFilter? filter)?
        loading,
    TResult Function(CharactersData characters, CharacterFilter? filter)?
        initialized,
    TResult Function(CharactersData characters, CharacterFilter? filter,
            String message, String? errorCode)?
        error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(characters, filter);
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
  const factory _initialized(
      {required final CharactersData characters,
      final CharacterFilter? filter}) = _$_initialized;
  const _initialized._() : super._();

  @override
  CharactersData get characters;
  @override
  CharacterFilter? get filter;
  @override
  @JsonKey(ignore: true)
  _$$_initializedCopyWith<_$_initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$photosErrorCopyWith<$Res>
    implements $PhotosStateCopyWith<$Res> {
  factory _$$photosErrorCopyWith(
          _$photosError value, $Res Function(_$photosError) then) =
      __$$photosErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CharactersData characters,
      CharacterFilter? filter,
      String message,
      String? errorCode});

  @override
  $CharactersDataCopyWith<$Res> get characters;
  @override
  $CharacterFilterCopyWith<$Res>? get filter;
}

/// @nodoc
class __$$photosErrorCopyWithImpl<$Res>
    extends _$PhotosStateCopyWithImpl<$Res, _$photosError>
    implements _$$photosErrorCopyWith<$Res> {
  __$$photosErrorCopyWithImpl(
      _$photosError _value, $Res Function(_$photosError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? filter = freezed,
    Object? message = null,
    Object? errorCode = freezed,
  }) {
    return _then(_$photosError(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as CharactersData,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharacterFilter?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$photosError extends photosError {
  const _$photosError(
      {required this.characters,
      this.filter,
      this.message = 'Error',
      this.errorCode})
      : super._();

  @override
  final CharactersData characters;
  @override
  final CharacterFilter? filter;
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
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, characters, filter, message, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$photosErrorCopyWith<_$photosError> get copyWith =>
      __$$photosErrorCopyWithImpl<_$photosError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CharactersData characters, CharacterFilter? filter)
        loading,
    required TResult Function(
            CharactersData characters, CharacterFilter? filter)
        initialized,
    required TResult Function(CharactersData characters,
            CharacterFilter? filter, String message, String? errorCode)
        error,
  }) {
    return error(characters, filter, message, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharactersData characters, CharacterFilter? filter)?
        loading,
    TResult? Function(CharactersData characters, CharacterFilter? filter)?
        initialized,
    TResult? Function(CharactersData characters, CharacterFilter? filter,
            String message, String? errorCode)?
        error,
  }) {
    return error?.call(characters, filter, message, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersData characters, CharacterFilter? filter)?
        loading,
    TResult Function(CharactersData characters, CharacterFilter? filter)?
        initialized,
    TResult Function(CharactersData characters, CharacterFilter? filter,
            String message, String? errorCode)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(characters, filter, message, errorCode);
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
      {required final CharactersData characters,
      final CharacterFilter? filter,
      final String message,
      final String? errorCode}) = _$photosError;
  const photosError._() : super._();

  @override
  CharactersData get characters;
  @override
  CharacterFilter? get filter;
  String get message;
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$$photosErrorCopyWith<_$photosError> get copyWith =>
      throw _privateConstructorUsedError;
}
