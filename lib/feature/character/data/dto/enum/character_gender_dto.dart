import 'package:json_annotation/json_annotation.dart';

enum CharacterGenderDto {
  @JsonValue('Female')
  female,
  @JsonValue('Male')
  male,
  @JsonValue('Genderless')
  genderless,
  @JsonValue('unknown')
  unknown,
}
