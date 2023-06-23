import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;

  Filters? filters;

  User({
    required this.id,
    this.filters,
  });
}

@embedded
class Filters {
  String? name;
  String? gender;
  String? status;
  String? race;

  Filters({
    this.name,
    this.gender,
    this.status,
    this.race,
  });
}

@collection
class FavoriteCharacter {
  Id id = Isar.autoIncrement;
}
