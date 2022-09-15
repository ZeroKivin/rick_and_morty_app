// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_pagination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterPaginationDto _$CharacterPaginationDtoFromJson(
        Map<String, dynamic> json) =>
    CharacterPaginationDto(
      info: InfoDto.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => CharacterDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
