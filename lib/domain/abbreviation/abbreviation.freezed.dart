// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'abbreviation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Abbreviation {
  @JsonKey(name: 'unit')
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'nutrient')
  String get nutrient => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AbbreviationCopyWith<Abbreviation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbbreviationCopyWith<$Res> {
  factory $AbbreviationCopyWith(
          Abbreviation value, $Res Function(Abbreviation) then) =
      _$AbbreviationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'nutrient') String nutrient});
}

/// @nodoc
class _$AbbreviationCopyWithImpl<$Res> implements $AbbreviationCopyWith<$Res> {
  _$AbbreviationCopyWithImpl(this._value, this._then);

  final Abbreviation _value;
  // ignore: unused_field
  final $Res Function(Abbreviation) _then;

  @override
  $Res call({
    Object? unit = freezed,
    Object? nutrient = freezed,
  }) {
    return _then(_value.copyWith(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      nutrient: nutrient == freezed
          ? _value.nutrient
          : nutrient // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AbbreviationCopyWith<$Res>
    implements $AbbreviationCopyWith<$Res> {
  factory _$$_AbbreviationCopyWith(
          _$_Abbreviation value, $Res Function(_$_Abbreviation) then) =
      __$$_AbbreviationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'nutrient') String nutrient});
}

/// @nodoc
class __$$_AbbreviationCopyWithImpl<$Res>
    extends _$AbbreviationCopyWithImpl<$Res>
    implements _$$_AbbreviationCopyWith<$Res> {
  __$$_AbbreviationCopyWithImpl(
      _$_Abbreviation _value, $Res Function(_$_Abbreviation) _then)
      : super(_value, (v) => _then(v as _$_Abbreviation));

  @override
  _$_Abbreviation get _value => super._value as _$_Abbreviation;

  @override
  $Res call({
    Object? unit = freezed,
    Object? nutrient = freezed,
  }) {
    return _then(_$_Abbreviation(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      nutrient: nutrient == freezed
          ? _value.nutrient
          : nutrient // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Abbreviation implements _Abbreviation {
  _$_Abbreviation(
      {@JsonKey(name: 'unit') required this.unit,
      @JsonKey(name: 'nutrient') required this.nutrient});

  @override
  @JsonKey(name: 'unit')
  final String unit;
  @override
  @JsonKey(name: 'nutrient')
  final String nutrient;

  @override
  String toString() {
    return 'Abbreviation(unit: $unit, nutrient: $nutrient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Abbreviation &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.nutrient, nutrient));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(nutrient));

  @JsonKey(ignore: true)
  @override
  _$$_AbbreviationCopyWith<_$_Abbreviation> get copyWith =>
      __$$_AbbreviationCopyWithImpl<_$_Abbreviation>(this, _$identity);
}

abstract class _Abbreviation implements Abbreviation {
  factory _Abbreviation(
          {@JsonKey(name: 'unit') required final String unit,
          @JsonKey(name: 'nutrient') required final String nutrient}) =
      _$_Abbreviation;

  @override
  @JsonKey(name: 'unit')
  String get unit;
  @override
  @JsonKey(name: 'nutrient')
  String get nutrient;
  @override
  @JsonKey(ignore: true)
  _$$_AbbreviationCopyWith<_$_Abbreviation> get copyWith =>
      throw _privateConstructorUsedError;
}
