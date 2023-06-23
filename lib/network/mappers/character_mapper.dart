import 'package:morty_api/characters/model/character_filter.dart';
import 'package:morty_api/data/user.dart';

extension CharacterFilterMapper on CharacterFilter {
  Filters get toUserFilter => Filters(
        name: name,
        race: race,
        status: status,
        gender: gender,
      );
}
