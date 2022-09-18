import 'dart:collection';

import 'package:elementary/elementary.dart';
import 'package:rick_and_morty_app/feature/character/data/exception/character_list_exception.dart';
import 'package:rick_and_morty_app/feature/character/data/repository/character_repository.dart';
import 'package:rick_and_morty_app/feature/character/domain/entity/character_entity_export.dart';
import 'package:rick_and_morty_app/feature/character/screens/character_list_screen/character_list_screen.dart';

/// Model for [CharacterListScreen].
class CharacterListScreenModel extends ElementaryModel {
  /// Create an instance [CharacterListScreenModel].
  CharacterListScreenModel({
    required ErrorHandler errorHandler,
    required ICharacterRepository repository,
  })  : _repository = repository,
        super(errorHandler: errorHandler);

  final ICharacterRepository _repository;
  final List<Character> _characters = [];
  int _nextPage = 1;
  bool _hasNext = true;

  Future<UnmodifiableListView<Character>> loadCharacters() async {
    try {
      if (_hasNext) {
        await _updatePaginationData();
      }

      return UnmodifiableListView(_characters);
    } on CharacterListException catch (exception) {
      handleError(exception.message);
      rethrow;
    }
  }

  Future<void> _updatePaginationData() async {
    final characterPagination = await _repository.getCharacters(
      page: _nextPage,
    );

    _characters.addAll(characterPagination.results);
    _nextPage++;
    _hasNext = characterPagination.info.hasNext;
  }
}
