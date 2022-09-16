import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty_app/util/types.dart';

import 'enum/character_gender_dto.dart';
import 'enum/character_status_dto.dart';
import 'location_dto.dart';
import 'origin_dto.dart';

part 'character_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class CharacterDto {
  CharacterDto({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  final int id;
  final String name;
  final CharacterStatusDto status;
  final String species;
  final String type;
  final CharacterGenderDto gender;
  final OriginDto origin;
  final LocationDto location;
  final String image;
  final List<String> episode;
  final String url;
  final String created;

  factory CharacterDto.fromJson(Json json) => _$CharacterDtoFromJson(json);
}
