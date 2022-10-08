// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meals_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealsState {
  MealsStatus get status => throw _privateConstructorUsedError;
  List<Meal> get meals => throw _privateConstructorUsedError;
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;
  List<Meal> get likedMeals => throw _privateConstructorUsedError;
  List<Meal> get dislikedMeals => throw _privateConstructorUsedError;
  List<Ingredient> get filteredIngredients =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealsStateCopyWith<MealsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsStateCopyWith<$Res> {
  factory $MealsStateCopyWith(
          MealsState value, $Res Function(MealsState) then) =
      _$MealsStateCopyWithImpl<$Res>;
  $Res call(
      {MealsStatus status,
      List<Meal> meals,
      List<Ingredient> ingredients,
      List<Meal> likedMeals,
      List<Meal> dislikedMeals,
      List<Ingredient> filteredIngredients});
}

/// @nodoc
class _$MealsStateCopyWithImpl<$Res> implements $MealsStateCopyWith<$Res> {
  _$MealsStateCopyWithImpl(this._value, this._then);

  final MealsState _value;
  // ignore: unused_field
  final $Res Function(MealsState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? meals = freezed,
    Object? ingredients = freezed,
    Object? likedMeals = freezed,
    Object? dislikedMeals = freezed,
    Object? filteredIngredients = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MealsStatus,
      meals: meals == freezed
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      likedMeals: likedMeals == freezed
          ? _value.likedMeals
          : likedMeals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      dislikedMeals: dislikedMeals == freezed
          ? _value.dislikedMeals
          : dislikedMeals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      filteredIngredients: filteredIngredients == freezed
          ? _value.filteredIngredients
          : filteredIngredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ));
  }
}

/// @nodoc
abstract class _$$_MealsStateCopyWith<$Res>
    implements $MealsStateCopyWith<$Res> {
  factory _$$_MealsStateCopyWith(
          _$_MealsState value, $Res Function(_$_MealsState) then) =
      __$$_MealsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MealsStatus status,
      List<Meal> meals,
      List<Ingredient> ingredients,
      List<Meal> likedMeals,
      List<Meal> dislikedMeals,
      List<Ingredient> filteredIngredients});
}

/// @nodoc
class __$$_MealsStateCopyWithImpl<$Res> extends _$MealsStateCopyWithImpl<$Res>
    implements _$$_MealsStateCopyWith<$Res> {
  __$$_MealsStateCopyWithImpl(
      _$_MealsState _value, $Res Function(_$_MealsState) _then)
      : super(_value, (v) => _then(v as _$_MealsState));

  @override
  _$_MealsState get _value => super._value as _$_MealsState;

  @override
  $Res call({
    Object? status = freezed,
    Object? meals = freezed,
    Object? ingredients = freezed,
    Object? likedMeals = freezed,
    Object? dislikedMeals = freezed,
    Object? filteredIngredients = freezed,
  }) {
    return _then(_$_MealsState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MealsStatus,
      meals: meals == freezed
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      ingredients: ingredients == freezed
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      likedMeals: likedMeals == freezed
          ? _value._likedMeals
          : likedMeals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      dislikedMeals: dislikedMeals == freezed
          ? _value._dislikedMeals
          : dislikedMeals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      filteredIngredients: filteredIngredients == freezed
          ? _value._filteredIngredients
          : filteredIngredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
    ));
  }
}

/// @nodoc

class _$_MealsState implements _MealsState {
  const _$_MealsState(
      {this.status = MealsStatus.initial,
      final List<Meal> meals = const [],
      final List<Ingredient> ingredients = const [],
      final List<Meal> likedMeals = const [],
      final List<Meal> dislikedMeals = const [],
      final List<Ingredient> filteredIngredients = const []})
      : _meals = meals,
        _ingredients = ingredients,
        _likedMeals = likedMeals,
        _dislikedMeals = dislikedMeals,
        _filteredIngredients = filteredIngredients;

  @override
  @JsonKey()
  final MealsStatus status;
  final List<Meal> _meals;
  @override
  @JsonKey()
  List<Meal> get meals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  final List<Ingredient> _ingredients;
  @override
  @JsonKey()
  List<Ingredient> get ingredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<Meal> _likedMeals;
  @override
  @JsonKey()
  List<Meal> get likedMeals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedMeals);
  }

  final List<Meal> _dislikedMeals;
  @override
  @JsonKey()
  List<Meal> get dislikedMeals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dislikedMeals);
  }

  final List<Ingredient> _filteredIngredients;
  @override
  @JsonKey()
  List<Ingredient> get filteredIngredients {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredIngredients);
  }

  @override
  String toString() {
    return 'MealsState(status: $status, meals: $meals, ingredients: $ingredients, likedMeals: $likedMeals, dislikedMeals: $dislikedMeals, filteredIngredients: $filteredIngredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealsState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._meals, _meals) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._likedMeals, _likedMeals) &&
            const DeepCollectionEquality()
                .equals(other._dislikedMeals, _dislikedMeals) &&
            const DeepCollectionEquality()
                .equals(other._filteredIngredients, _filteredIngredients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_meals),
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_likedMeals),
      const DeepCollectionEquality().hash(_dislikedMeals),
      const DeepCollectionEquality().hash(_filteredIngredients));

  @JsonKey(ignore: true)
  @override
  _$$_MealsStateCopyWith<_$_MealsState> get copyWith =>
      __$$_MealsStateCopyWithImpl<_$_MealsState>(this, _$identity);
}

abstract class _MealsState implements MealsState {
  const factory _MealsState(
      {final MealsStatus status,
      final List<Meal> meals,
      final List<Ingredient> ingredients,
      final List<Meal> likedMeals,
      final List<Meal> dislikedMeals,
      final List<Ingredient> filteredIngredients}) = _$_MealsState;

  @override
  MealsStatus get status;
  @override
  List<Meal> get meals;
  @override
  List<Ingredient> get ingredients;
  @override
  List<Meal> get likedMeals;
  @override
  List<Meal> get dislikedMeals;
  @override
  List<Ingredient> get filteredIngredients;
  @override
  @JsonKey(ignore: true)
  _$$_MealsStateCopyWith<_$_MealsState> get copyWith =>
      throw _privateConstructorUsedError;
}
