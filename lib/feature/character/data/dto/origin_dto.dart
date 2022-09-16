import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty_app/util/types.dart';

part 'origin_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class OriginDto {
  OriginDto({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory OriginDto.fromJson(Json json) => _$OriginDtoFromJson(json);
}
