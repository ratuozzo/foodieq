// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_component.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealComponent {
  @JsonKey(name: 'mainIngredient')
  Ingredient get mainIngredient => throw _privateConstructorUsedError;
  @JsonKey(name: 'supplementaryIngredients')
  Ingredient get supplementaryIngredients => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealComponentCopyWith<MealComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealComponentCopyWith<$Res> {
  factory $MealComponentCopyWith(
          MealComponent value, $Res Function(MealComponent) then) =
      _$MealComponentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'mainIngredient')
          Ingredient mainIngredient,
      @JsonKey(name: 'supplementaryIngredients')
          Ingredient supplementaryIngredients});

  $IngredientCopyWith<$Res> get mainIngredient;
  $IngredientCopyWith<$Res> get supplementaryIngredients;
}

/// @nodoc
class _$MealComponentCopyWithImpl<$Res>
    implements $MealComponentCopyWith<$Res> {
  _$MealComponentCopyWithImpl(this._value, this._then);

  final MealComponent _value;
  // ignore: unused_field
  final $Res Function(MealComponent) _then;

  @override
  $Res call({
    Object? mainIngredient = freezed,
    Object? supplementaryIngredients = freezed,
  }) {
    return _then(_value.copyWith(
      mainIngredient: mainIngredient == freezed
          ? _value.mainIngredient
          : mainIngredient // ignore: cast_nullable_to_non_nullable
              as Ingredient,
      supplementaryIngredients: supplementaryIngredients == freezed
          ? _value.supplementaryIngredients
          : supplementaryIngredients // ignore: cast_nullable_to_non_nullable
              as Ingredient,
    ));
  }

  @override
  $IngredientCopyWith<$Res> get mainIngredient {
    return $IngredientCopyWith<$Res>(_value.mainIngredient, (value) {
      return _then(_value.copyWith(mainIngredient: value));
    });
  }

  @override
  $IngredientCopyWith<$Res> get supplementaryIngredients {
    return $IngredientCopyWith<$Res>(_value.supplementaryIngredients, (value) {
      return _then(_value.copyWith(supplementaryIngredients: value));
    });
  }
}

/// @nodoc
abstract class _$$_MealComponentCopyWith<$Res>
    implements $MealComponentCopyWith<$Res> {
  factory _$$_MealComponentCopyWith(
          _$_MealComponent value, $Res Function(_$_MealComponent) then) =
      __$$_MealComponentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'mainIngredient')
          Ingredient mainIngredient,
      @JsonKey(name: 'supplementaryIngredients')
          Ingredient supplementaryIngredients});

  @override
  $IngredientCopyWith<$Res> get mainIngredient;
  @override
  $IngredientCopyWith<$Res> get supplementaryIngredients;
}

/// @nodoc
class __$$_MealComponentCopyWithImpl<$Res>
    extends _$MealComponentCopyWithImpl<$Res>
    implements _$$_MealComponentCopyWith<$Res> {
  __$$_MealComponentCopyWithImpl(
      _$_MealComponent _value, $Res Function(_$_MealComponent) _then)
      : super(_value, (v) => _then(v as _$_MealComponent));

  @override
  _$_MealComponent get _value => super._value as _$_MealComponent;

  @override
  $Res call({
    Object? mainIngredient = freezed,
    Object? supplementaryIngredients = freezed,
  }) {
    return _then(_$_MealComponent(
      mainIngredient: mainIngredient == freezed
          ? _value.mainIngredient
          : mainIngredient // ignore: cast_nullable_to_non_nullable
              as Ingredient,
      supplementaryIngredients: supplementaryIngredients == freezed
          ? _value.supplementaryIngredients
          : supplementaryIngredients // ignore: cast_nullable_to_non_nullable
              as Ingredient,
    ));
  }
}

/// @nodoc

class _$_MealComponent implements _MealComponent {
  _$_MealComponent(
      {@JsonKey(name: 'mainIngredient')
          required this.mainIngredient,
      @JsonKey(name: 'supplementaryIngredients')
          required this.supplementaryIngredients});

  @override
  @JsonKey(name: 'mainIngredient')
  final Ingredient mainIngredient;
  @override
  @JsonKey(name: 'supplementaryIngredients')
  final Ingredient supplementaryIngredients;

  @override
  String toString() {
    return 'MealComponent(mainIngredient: $mainIngredient, supplementaryIngredients: $supplementaryIngredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealComponent &&
            const DeepCollectionEquality()
                .equals(other.mainIngredient, mainIngredient) &&
            const DeepCollectionEquality().equals(
                other.supplementaryIngredients, supplementaryIngredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mainIngredient),
      const DeepCollectionEquality().hash(supplementaryIngredients));

  @JsonKey(ignore: true)
  @override
  _$$_MealComponentCopyWith<_$_MealComponent> get copyWith =>
      __$$_MealComponentCopyWithImpl<_$_MealComponent>(this, _$identity);
}

abstract class _MealComponent implements MealComponent {
  factory _MealComponent(
          {@JsonKey(name: 'mainIngredient')
              required final Ingredient mainIngredient,
          @JsonKey(name: 'supplementaryIngredients')
              required final Ingredient supplementaryIngredients}) =
      _$_MealComponent;

  @override
  @JsonKey(name: 'mainIngredient')
  Ingredient get mainIngredient;
  @override
  @JsonKey(name: 'supplementaryIngredients')
  Ingredient get supplementaryIngredients;
  @override
  @JsonKey(ignore: true)
  _$$_MealComponentCopyWith<_$_MealComponent> get copyWith =>
      throw _privateConstructorUsedError;
}
