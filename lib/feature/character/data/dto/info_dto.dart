import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty_app/util/types.dart';

part 'info_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class InfoDto {
  InfoDto({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });

  final int count;
  final int pages;
  final String? next;
  final String? prev;

  factory InfoDto.fromJson(Json json) => _$InfoDtoFromJson(json);
}
