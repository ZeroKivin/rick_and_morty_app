import 'dart:collection';

import 'package:elementary/elementary.dart';
import 'package:rick_and_morty_app/feature/character/data/exception/character_list_exception.dart';
import 'package:rick_and_morty_app/feature/character/data/repository/character_repository.dart';
import 'package:rick_and_morty_app/feature/character/domain/entity/character_entity_export.dart';

class CharacterListScreenModel extends ElementaryModel {
  CharacterListScreenModel({
    required ErrorHandler errorHandler,
    required ICharacterRepository repository,
  })  : _repository = repository,
        super(errorHandler: errorHandler);

  final ICharacterRepository _repository;
  final List<Character> _characters = [];

  /// Next page number.
  int _nextPage = 1;

  /// Information about the availability of next page of characters.
  bool _hasNext = true;

  /// Return actual characters data.
  Future<UnmodifiableListView<Character>> loadCharacters() async {
    try {
      if (_hasNext) {
        await _updateCharactersData();
      }

      return UnmodifiableListView(_characters);
    } on CharacterListException catch (exception) {
      handleError(exception.message);
      rethrow;
    }
  }

  /// Load characters data from api and add it to local state.
  Future<void> _updateCharactersData() async {
    final characterPagination = await _repository.getCharacters(
      page: _nextPage,
    );

    _characters.addAll(characterPagination.results);
    _nextPage++;
    _hasNext = characterPagination.info.hasNext;
  }
}
