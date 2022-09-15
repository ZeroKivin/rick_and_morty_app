import 'package:json_annotation/json_annotation.dart';

enum CharacterStatusDto {
  @JsonValue('Alive')
  alive,
  @JsonValue('Dead')
  dead,
  @JsonValue('unknown')
  unknown,
}
