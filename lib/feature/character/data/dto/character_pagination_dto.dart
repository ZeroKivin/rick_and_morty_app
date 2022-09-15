import 'dart:async';

import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty_app/util/types.dart';

import 'character_dto.dart';
import 'info_dto.dart';

part 'character_pagination_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class CharacterPaginationDto {
  CharacterPaginationDto({
    required this.info,
    required this.results,
  });

  final InfoDto info;
  final List<CharacterDto> results;

  factory CharacterPaginationDto.fromJson(Json json) =>
      _$CharacterPaginationDtoFromJson(json);
}

FutureOr<CharacterPaginationDto> deserializeCharacterPaginationDto(Json json) =>
    CharacterPaginationDto.fromJson(json);
