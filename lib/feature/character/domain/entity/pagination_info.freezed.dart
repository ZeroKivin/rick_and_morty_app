// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pagination_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginationInfo {
  bool get hasNext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginationInfoCopyWith<PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationInfoCopyWith<$Res> {
  factory $PaginationInfoCopyWith(
          PaginationInfo value, $Res Function(PaginationInfo) then) =
      _$PaginationInfoCopyWithImpl<$Res>;
  $Res call({bool hasNext});
}

/// @nodoc
class _$PaginationInfoCopyWithImpl<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  _$PaginationInfoCopyWithImpl(this._value, this._then);

  final PaginationInfo _value;
  // ignore: unused_field
  final $Res Function(PaginationInfo) _then;

  @override
  $Res call({
    Object? hasNext = freezed,
  }) {
    return _then(_value.copyWith(
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_PaginationInfoCopyWith<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  factory _$$_PaginationInfoCopyWith(
          _$_PaginationInfo value, $Res Function(_$_PaginationInfo) then) =
      __$$_PaginationInfoCopyWithImpl<$Res>;
  @override
  $Res call({bool hasNext});
}

/// @nodoc
class __$$_PaginationInfoCopyWithImpl<$Res>
    extends _$PaginationInfoCopyWithImpl<$Res>
    implements _$$_PaginationInfoCopyWith<$Res> {
  __$$_PaginationInfoCopyWithImpl(
      _$_PaginationInfo _value, $Res Function(_$_PaginationInfo) _then)
      : super(_value, (v) => _then(v as _$_PaginationInfo));

  @override
  _$_PaginationInfo get _value => super._value as _$_PaginationInfo;

  @override
  $Res call({
    Object? hasNext = freezed,
  }) {
    return _then(_$_PaginationInfo(
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PaginationInfo implements _PaginationInfo {
  const _$_PaginationInfo({required this.hasNext});

  @override
  final bool hasNext;

  @override
  String toString() {
    return 'PaginationInfo(hasNext: $hasNext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationInfo &&
            const DeepCollectionEquality().equals(other.hasNext, hasNext));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hasNext));

  @JsonKey(ignore: true)
  @override
  _$$_PaginationInfoCopyWith<_$_PaginationInfo> get copyWith =>
      __$$_PaginationInfoCopyWithImpl<_$_PaginationInfo>(this, _$identity);
}

abstract class _PaginationInfo implements PaginationInfo {
  const factory _PaginationInfo({required final bool hasNext}) =
      _$_PaginationInfo;

  @override
  bool get hasNext;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationInfoCopyWith<_$_PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
