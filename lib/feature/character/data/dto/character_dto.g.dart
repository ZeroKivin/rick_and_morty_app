// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterDto _$CharacterDtoFromJson(Map<String, dynamic> json) => CharacterDto(
      id: json['id'] as int,
      name: json['name'] as String,
      status: $enumDecode(_$CharacterStatusDtoEnumMap, json['status']),
      species: json['species'] as String,
      type: json['type'] as String,
      gender: $enumDecode(_$CharacterGenderDtoEnumMap, json['gender']),
      origin: OriginDto.fromJson(json['origin'] as Map<String, dynamic>),
      location: LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      image: json['image'] as String,
      episode:
          (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
      url: json['url'] as String,
      created: json['created'] as String,
    );

const _$CharacterStatusDtoEnumMap = {
  CharacterStatusDto.alive: 'Alive',
  CharacterStatusDto.dead: 'Dead',
  CharacterStatusDto.unknown: 'unknown',
};

const _$CharacterGenderDtoEnumMap = {
  CharacterGenderDto.female: 'Female',
  CharacterGenderDto.male: 'Male',
  CharacterGenderDto.genderless: 'Genderless',
  CharacterGenderDto.unknown: 'unknown',
};
