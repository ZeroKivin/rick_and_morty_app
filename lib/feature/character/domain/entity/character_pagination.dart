import 'package:freezed_annotation/freezed_annotation.dart';

import 'character.dart';
import 'pagination_info.dart';

part 'character_pagination.freezed.dart';

@freezed
class CharacterPagination with _$CharacterPagination {
  const factory CharacterPagination({
    required PaginationInfo info,
    required List<Character> results,
  }) = _CharacterPagination;
}
