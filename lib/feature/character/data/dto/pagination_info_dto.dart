import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty_app/util/types.dart';

part 'pagination_info_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  fieldRename: FieldRename.snake,
  createToJson: false,
)
class PaginationInfoDto {
  PaginationInfoDto({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });

  final int count;
  final int pages;
  final String? next;
  final String? prev;

  factory PaginationInfoDto.fromJson(Json json) =>
      _$PaginationInfoDtoFromJson(json);
}
