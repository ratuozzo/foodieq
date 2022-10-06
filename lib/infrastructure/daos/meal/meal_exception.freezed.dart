// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealException {
  dynamic get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic error) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic error)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealExceptionCopyWith<MealException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealExceptionCopyWith<$Res> {
  factory $MealExceptionCopyWith(
          MealException value, $Res Function(MealException) then) =
      _$MealExceptionCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$MealExceptionCopyWithImpl<$Res>
    implements $MealExceptionCopyWith<$Res> {
  _$MealExceptionCopyWithImpl(this._value, this._then);

  final MealException _value;
  // ignore: unused_field
  final $Res Function(MealException) _then;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$UnexpectedCopyWith<$Res>
    implements $MealExceptionCopyWith<$Res> {
  factory _$$UnexpectedCopyWith(
          _$Unexpected value, $Res Function(_$Unexpected) then) =
      __$$UnexpectedCopyWithImpl<$Res>;
  @override
  $Res call({dynamic error});
}

/// @nodoc
class __$$UnexpectedCopyWithImpl<$Res> extends _$MealExceptionCopyWithImpl<$Res>
    implements _$$UnexpectedCopyWith<$Res> {
  __$$UnexpectedCopyWithImpl(
      _$Unexpected _value, $Res Function(_$Unexpected) _then)
      : super(_value, (v) => _then(v as _$Unexpected));

  @override
  _$Unexpected get _value => super._value as _$Unexpected;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$Unexpected(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$Unexpected implements Unexpected {
  const _$Unexpected(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'MealException.unexpected(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unexpected &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$UnexpectedCopyWith<_$Unexpected> get copyWith =>
      __$$UnexpectedCopyWithImpl<_$Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic error) unexpected,
  }) {
    return unexpected(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic error)? unexpected,
  }) {
    return unexpected?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements MealException {
  const factory Unexpected(final dynamic error) = _$Unexpected;

  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedCopyWith<_$Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}
