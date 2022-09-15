import 'package:freezed_annotation/freezed_annotation.dart';

part 'origin.freezed.dart';

@freezed
class Origin with _$Origin {
  const factory Origin({
    required String name,
    required String url,
  }) = _Origin;
}
