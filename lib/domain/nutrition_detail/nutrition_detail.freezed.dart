// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nutrition_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NutritionDetail _$NutritionDetailFromJson(Map<String, dynamic> json) {
  return _NutritionDetail.fromJson(json);
}

/// @nodoc
mixin _$NutritionDetail {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit')
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  int get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'valueWithPrecision')
  double get valueWithPrecision => throw _privateConstructorUsedError;
  @JsonKey(name: 'abbreviation')
  Abbreviation get abbreviation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionDetailCopyWith<NutritionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionDetailCopyWith<$Res> {
  factory $NutritionDetailCopyWith(
          NutritionDetail value, $Res Function(NutritionDetail) then) =
      _$NutritionDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'value') int value,
      @JsonKey(name: 'valueWithPrecision') double valueWithPrecision,
      @JsonKey(name: 'abbreviation') Abbreviation abbreviation});

  $AbbreviationCopyWith<$Res> get abbreviation;
}

/// @nodoc
class _$NutritionDetailCopyWithImpl<$Res>
    implements $NutritionDetailCopyWith<$Res> {
  _$NutritionDetailCopyWithImpl(this._value, this._then);

  final NutritionDetail _value;
  // ignore: unused_field
  final $Res Function(NutritionDetail) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? unit = freezed,
    Object? value = freezed,
    Object? valueWithPrecision = freezed,
    Object? abbreviation = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      valueWithPrecision: valueWithPrecision == freezed
          ? _value.valueWithPrecision
          : valueWithPrecision // ignore: cast_nullable_to_non_nullable
              as double,
      abbreviation: abbreviation == freezed
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as Abbreviation,
    ));
  }

  @override
  $AbbreviationCopyWith<$Res> get abbreviation {
    return $AbbreviationCopyWith<$Res>(_value.abbreviation, (value) {
      return _then(_value.copyWith(abbreviation: value));
    });
  }
}

/// @nodoc
abstract class _$$_NutritionDetailCopyWith<$Res>
    implements $NutritionDetailCopyWith<$Res> {
  factory _$$_NutritionDetailCopyWith(
          _$_NutritionDetail value, $Res Function(_$_NutritionDetail) then) =
      __$$_NutritionDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'unit') String unit,
      @JsonKey(name: 'value') int value,
      @JsonKey(name: 'valueWithPrecision') double valueWithPrecision,
      @JsonKey(name: 'abbreviation') Abbreviation abbreviation});

  @override
  $AbbreviationCopyWith<$Res> get abbreviation;
}

/// @nodoc
class __$$_NutritionDetailCopyWithImpl<$Res>
    extends _$NutritionDetailCopyWithImpl<$Res>
    implements _$$_NutritionDetailCopyWith<$Res> {
  __$$_NutritionDetailCopyWithImpl(
      _$_NutritionDetail _value, $Res Function(_$_NutritionDetail) _then)
      : super(_value, (v) => _then(v as _$_NutritionDetail));

  @override
  _$_NutritionDetail get _value => super._value as _$_NutritionDetail;

  @override
  $Res call({
    Object? name = freezed,
    Object? unit = freezed,
    Object? value = freezed,
    Object? valueWithPrecision = freezed,
    Object? abbreviation = freezed,
  }) {
    return _then(_$_NutritionDetail(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      valueWithPrecision: valueWithPrecision == freezed
          ? _value.valueWithPrecision
          : valueWithPrecision // ignore: cast_nullable_to_non_nullable
              as double,
      abbreviation: abbreviation == freezed
          ? _value.abbreviation
          : abbreviation // ignore: cast_nullable_to_non_nullable
              as Abbreviation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NutritionDetail implements _NutritionDetail {
  _$_NutritionDetail(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'unit') required this.unit,
      @JsonKey(name: 'value') required this.value,
      @JsonKey(name: 'valueWithPrecision') required this.valueWithPrecision,
      @JsonKey(name: 'abbreviation') required this.abbreviation});

  factory _$_NutritionDetail.fromJson(Map<String, dynamic> json) =>
      _$$_NutritionDetailFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'unit')
  final String unit;
  @override
  @JsonKey(name: 'value')
  final int value;
  @override
  @JsonKey(name: 'valueWithPrecision')
  final double valueWithPrecision;
  @override
  @JsonKey(name: 'abbreviation')
  final Abbreviation abbreviation;

  @override
  String toString() {
    return 'NutritionDetail(name: $name, unit: $unit, value: $value, valueWithPrecision: $valueWithPrecision, abbreviation: $abbreviation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NutritionDetail &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.valueWithPrecision, valueWithPrecision) &&
            const DeepCollectionEquality()
                .equals(other.abbreviation, abbreviation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(valueWithPrecision),
      const DeepCollectionEquality().hash(abbreviation));

  @JsonKey(ignore: true)
  @override
  _$$_NutritionDetailCopyWith<_$_NutritionDetail> get copyWith =>
      __$$_NutritionDetailCopyWithImpl<_$_NutritionDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutritionDetailToJson(
      this,
    );
  }
}

abstract class _NutritionDetail implements NutritionDetail {
  factory _NutritionDetail(
      {@JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: 'unit')
          required final String unit,
      @JsonKey(name: 'value')
          required final int value,
      @JsonKey(name: 'valueWithPrecision')
          required final double valueWithPrecision,
      @JsonKey(name: 'abbreviation')
          required final Abbreviation abbreviation}) = _$_NutritionDetail;

  factory _NutritionDetail.fromJson(Map<String, dynamic> json) =
      _$_NutritionDetail.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'unit')
  String get unit;
  @override
  @JsonKey(name: 'value')
  int get value;
  @override
  @JsonKey(name: 'valueWithPrecision')
  double get valueWithPrecision;
  @override
  @JsonKey(name: 'abbreviation')
  Abbreviation get abbreviation;
  @override
  @JsonKey(ignore: true)
  _$$_NutritionDetailCopyWith<_$_NutritionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
