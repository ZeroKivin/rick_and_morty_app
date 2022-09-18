import 'package:dio/dio.dart';
import 'package:rick_and_morty_app/feature/character/data/exception/character_list_exception.dart';
import 'package:rick_and_morty_app/feature/character/data/mapper/character_mapper.dart';
import 'package:rick_and_morty_app/feature/character/data/service/character_service.dart';
import 'package:rick_and_morty_app/feature/character/domain/entity/character_entity_export.dart';

class CharacterRepository implements ICharacterRepository {
  CharacterRepository(this._characterService);

  final CharacterService _characterService;

  @override
  Future<CharacterPagination> getCharacters({int? page}) async {
    try {
      final characterPagination =
          await _characterService.getCharacters(page: page);

      return manCharacterPagination(characterPagination);
    } on DioError catch (error) {
      throw CharacterListException(message: error.message);
    }
  }
}

abstract class ICharacterRepository {
  Future<CharacterPagination> getCharacters({int? page});
}
