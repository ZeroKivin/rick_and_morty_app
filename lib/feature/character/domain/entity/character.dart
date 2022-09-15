import 'package:freezed_annotation/freezed_annotation.dart';

import 'enum/character_gender.dart';
import 'enum/character_status.dart';
import 'location.dart';
import 'origin.dart';

part 'character.freezed.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required int id,
    required String name,
    required CharacterStatus status,
    required String species,
    required String type,
    required CharacterGender gender,
    required Origin origin,
    required Location location,
    required String image,
    required List<String> episode,
    required String url,
    required String created,
  }) = _Character;
}
