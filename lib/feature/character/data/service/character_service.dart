import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/http.dart';
import 'package:rick_and_morty_app/feature/character/character_url.dart';
import 'package:rick_and_morty_app/feature/character/data/dto/character_dto_export.dart';

part 'character_service.g.dart';

@RestApi(parser: Parser.FlutterCompute)
abstract class CharacterService {
  factory CharacterService(Dio dio, {String baseUrl}) = _CharacterService;

  @GET(CharacterUrl.character)
  Future<CharacterPaginationDto> getCharacters({
    @Query('page') required int page,
  });
}
