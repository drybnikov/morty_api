import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;

  Filters? filters;
}

@embedded
class Filters {
  String? name;

  String? gender;
  String? status;
  String? race;
}

@collection
class FavoriteCharacter {
  Id id = Isar.autoIncrement;
}
