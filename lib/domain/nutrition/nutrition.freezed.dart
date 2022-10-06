// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nutrition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Nutrition _$NutritionFromJson(Map<String, dynamic> json) {
  return _Nutrition.fromJson(json);
}

/// @nodoc
mixin _$Nutrition {
  @JsonKey(name: 'carbohydrates')
  NutritionDetail get carbohydrates => throw _privateConstructorUsedError;
  @JsonKey(name: 'fatTotal')
  NutritionDetail get fatTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'protein')
  NutritionDetail get protein => throw _privateConstructorUsedError;
  @JsonKey(name: 'energy')
  NutritionDetail get energy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionCopyWith<Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionCopyWith<$Res> {
  factory $NutritionCopyWith(Nutrition value, $Res Function(Nutrition) then) =
      _$NutritionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'carbohydrates') NutritionDetail carbohydrates,
      @JsonKey(name: 'fatTotal') NutritionDetail fatTotal,
      @JsonKey(name: 'protein') NutritionDetail protein,
      @JsonKey(name: 'energy') NutritionDetail energy});

  $NutritionDetailCopyWith<$Res> get carbohydrates;
  $NutritionDetailCopyWith<$Res> get fatTotal;
  $NutritionDetailCopyWith<$Res> get protein;
  $NutritionDetailCopyWith<$Res> get energy;
}

/// @nodoc
class _$NutritionCopyWithImpl<$Res> implements $NutritionCopyWith<$Res> {
  _$NutritionCopyWithImpl(this._value, this._then);

  final Nutrition _value;
  // ignore: unused_field
  final $Res Function(Nutrition) _then;

  @override
  $Res call({
    Object? carbohydrates = freezed,
    Object? fatTotal = freezed,
    Object? protein = freezed,
    Object? energy = freezed,
  }) {
    return _then(_value.copyWith(
      carbohydrates: carbohydrates == freezed
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as NutritionDetail,
      fatTotal: fatTotal == freezed
          ? _value.fatTotal
          : fatTotal // ignore: cast_nullable_to_non_nullable
              as NutritionDetail,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as NutritionDetail,
      energy: energy == freezed
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as NutritionDetail,
    ));
  }

  @override
  $NutritionDetailCopyWith<$Res> get carbohydrates {
    return $NutritionDetailCopyWith<$Res>(_value.carbohydrates, (value) {
      return _then(_value.copyWith(carbohydrates: value));
    });
  }

  @override
  $NutritionDetailCopyWith<$Res> get fatTotal {
    return $NutritionDetailCopyWith<$Res>(_value.fatTotal, (value) {
      return _then(_value.copyWith(fatTotal: value));
    });
  }

  @override
  $NutritionDetailCopyWith<$Res> get protein {
    return $NutritionDetailCopyWith<$Res>(_value.protein, (value) {
      return _then(_value.copyWith(protein: value));
    });
  }

  @override
  $NutritionDetailCopyWith<$Res> get energy {
    return $NutritionDetailCopyWith<$Res>(_value.energy, (value) {
      return _then(_value.copyWith(energy: value));
    });
  }
}

/// @nodoc
abstract class _$$_NutritionCopyWith<$Res> implements $NutritionCopyWith<$Res> {
  factory _$$_NutritionCopyWith(
          _$_Nutrition value, $Res Function(_$_Nutrition) then) =
      __$$_NutritionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'carbohydrates') NutritionDetail carbohydrates,
      @JsonKey(name: 'fatTotal') NutritionDetail fatTotal,
      @JsonKey(name: 'protein') NutritionDetail protein,
      @JsonKey(name: 'energy') NutritionDetail energy});

  @override
  $NutritionDetailCopyWith<$Res> get carbohydrates;
  @override
  $NutritionDetailCopyWith<$Res> get fatTotal;
  @override
  $NutritionDetailCopyWith<$Res> get protein;
  @override
  $NutritionDetailCopyWith<$Res> get energy;
}

/// @nodoc
class __$$_NutritionCopyWithImpl<$Res> extends _$NutritionCopyWithImpl<$Res>
    implements _$$_NutritionCopyWith<$Res> {
  __$$_NutritionCopyWithImpl(
      _$_Nutrition _value, $Res Function(_$_Nutrition) _then)
      : super(_value, (v) => _then(v as _$_Nutrition));

  @override
  _$_Nutrition get _value => super._value as _$_Nutrition;

  @override
  $Res call({
    Object? carbohydrates = freezed,
    Object? fatTotal = freezed,
    Object? protein = freezed,
    Object? energy = freezed,
  }) {
    return _then(_$_Nutrition(
      carbohydrates: carbohydrates == freezed
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as NutritionDetail,
      fatTotal: fatTotal == freezed
          ? _value.fatTotal
          : fatTotal // ignore: cast_nullable_to_non_nullable
              as NutritionDetail,
      protein: protein == freezed
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as NutritionDetail,
      energy: energy == freezed
          ? _value.energy
          : energy // ignore: cast_nullable_to_non_nullable
              as NutritionDetail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Nutrition implements _Nutrition {
  _$_Nutrition(
      {@JsonKey(name: 'carbohydrates') required this.carbohydrates,
      @JsonKey(name: 'fatTotal') required this.fatTotal,
      @JsonKey(name: 'protein') required this.protein,
      @JsonKey(name: 'energy') required this.energy});

  factory _$_Nutrition.fromJson(Map<String, dynamic> json) =>
      _$$_NutritionFromJson(json);

  @override
  @JsonKey(name: 'carbohydrates')
  final NutritionDetail carbohydrates;
  @override
  @JsonKey(name: 'fatTotal')
  final NutritionDetail fatTotal;
  @override
  @JsonKey(name: 'protein')
  final NutritionDetail protein;
  @override
  @JsonKey(name: 'energy')
  final NutritionDetail energy;

  @override
  String toString() {
    return 'Nutrition(carbohydrates: $carbohydrates, fatTotal: $fatTotal, protein: $protein, energy: $energy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nutrition &&
            const DeepCollectionEquality()
                .equals(other.carbohydrates, carbohydrates) &&
            const DeepCollectionEquality().equals(other.fatTotal, fatTotal) &&
            const DeepCollectionEquality().equals(other.protein, protein) &&
            const DeepCollectionEquality().equals(other.energy, energy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(carbohydrates),
      const DeepCollectionEquality().hash(fatTotal),
      const DeepCollectionEquality().hash(protein),
      const DeepCollectionEquality().hash(energy));

  @JsonKey(ignore: true)
  @override
  _$$_NutritionCopyWith<_$_Nutrition> get copyWith =>
      __$$_NutritionCopyWithImpl<_$_Nutrition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutritionToJson(
      this,
    );
  }
}

abstract class _Nutrition implements Nutrition {
  factory _Nutrition(
      {@JsonKey(name: 'carbohydrates')
          required final NutritionDetail carbohydrates,
      @JsonKey(name: 'fatTotal')
          required final NutritionDetail fatTotal,
      @JsonKey(name: 'protein')
          required final NutritionDetail protein,
      @JsonKey(name: 'energy')
          required final NutritionDetail energy}) = _$_Nutrition;

  factory _Nutrition.fromJson(Map<String, dynamic> json) =
      _$_Nutrition.fromJson;

  @override
  @JsonKey(name: 'carbohydrates')
  NutritionDetail get carbohydrates;
  @override
  @JsonKey(name: 'fatTotal')
  NutritionDetail get fatTotal;
  @override
  @JsonKey(name: 'protein')
  NutritionDetail get protein;
  @override
  @JsonKey(name: 'energy')
  NutritionDetail get energy;
  @override
  @JsonKey(ignore: true)
  _$$_NutritionCopyWith<_$_Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}
