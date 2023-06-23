import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_filter.freezed.dart';

@freezed
class CharacterFilter with _$CharacterFilter {
  const factory CharacterFilter({
    String? name,
    String? status,
    String? gender,
    String? race,
  }) = _CharacterFilter;
}
