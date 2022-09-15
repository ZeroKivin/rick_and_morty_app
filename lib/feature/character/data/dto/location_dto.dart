import 'dart:async';

import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty_app/util/types.dart';

part 'location_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class LocationDto {
  LocationDto({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory LocationDto.fromJson(Json json) => _$LocationDtoFromJson(json);
}

FutureOr<LocationDto> deserializeLocationDto(Json json) =>
    LocationDto.fromJson(json);
