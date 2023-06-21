import 'package:isar/isar.dart';

part 'character_data.g.dart';

@collection
class CharacterCollection {
  Id id = Isar.autoIncrement;

  final String name;
  final String? status;
  final String? species;
  final String? gender;
  final String? image;
  final String? created;

  CharacterCollection({
    required this.id,
    required this.name,
    this.status,
    this.species,
    this.gender,
    this.image,
    this.created,
  });
}
