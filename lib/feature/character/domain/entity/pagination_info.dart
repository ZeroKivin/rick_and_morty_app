import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_info.freezed.dart';

@freezed
class PaginationInfo with _$PaginationInfo {
  const factory PaginationInfo({
    required bool hasNext,
  }) = _PaginationInfo;
}
