// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterPagination {
  PaginationInfo get info => throw _privateConstructorUsedError;
  List<Character> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterPaginationCopyWith<CharacterPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterPaginationCopyWith<$Res> {
  factory $CharacterPaginationCopyWith(
          CharacterPagination value, $Res Function(CharacterPagination) then) =
      _$CharacterPaginationCopyWithImpl<$Res>;
  $Res call({PaginationInfo info, List<Character> results});

  $PaginationInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CharacterPaginationCopyWithImpl<$Res>
    implements $CharacterPaginationCopyWith<$Res> {
  _$CharacterPaginationCopyWithImpl(this._value, this._then);

  final CharacterPagination _value;
  // ignore: unused_field
  final $Res Function(CharacterPagination) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PaginationInfo,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }

  @override
  $PaginationInfoCopyWith<$Res> get info {
    return $PaginationInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$$_CharacterPaginationCopyWith<$Res>
    implements $CharacterPaginationCopyWith<$Res> {
  factory _$$_CharacterPaginationCopyWith(_$_CharacterPagination value,
          $Res Function(_$_CharacterPagination) then) =
      __$$_CharacterPaginationCopyWithImpl<$Res>;
  @override
  $Res call({PaginationInfo info, List<Character> results});

  @override
  $PaginationInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$_CharacterPaginationCopyWithImpl<$Res>
    extends _$CharacterPaginationCopyWithImpl<$Res>
    implements _$$_CharacterPaginationCopyWith<$Res> {
  __$$_CharacterPaginationCopyWithImpl(_$_CharacterPagination _value,
      $Res Function(_$_CharacterPagination) _then)
      : super(_value, (v) => _then(v as _$_CharacterPagination));

  @override
  _$_CharacterPagination get _value => super._value as _$_CharacterPagination;

  @override
  $Res call({
    Object? info = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_CharacterPagination(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PaginationInfo,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$_CharacterPagination implements _CharacterPagination {
  const _$_CharacterPagination(
      {required this.info, required final List<Character> results})
      : _results = results;

  @override
  final PaginationInfo info;
  final List<Character> _results;
  @override
  List<Character> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CharacterPagination(info: $info, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterPagination &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_CharacterPaginationCopyWith<_$_CharacterPagination> get copyWith =>
      __$$_CharacterPaginationCopyWithImpl<_$_CharacterPagination>(
          this, _$identity);
}

abstract class _CharacterPagination implements CharacterPagination {
  const factory _CharacterPagination(
      {required final PaginationInfo info,
      required final List<Character> results}) = _$_CharacterPagination;

  @override
  PaginationInfo get info;
  @override
  List<Character> get results;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterPaginationCopyWith<_$_CharacterPagination> get copyWith =>
      throw _privateConstructorUsedError;
}
