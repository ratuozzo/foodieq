// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Meal _$MealFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
mixin _$Meal {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @DatetimeJsonConverter()
  @JsonKey(name: 'created')
  DateTime get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'nutrition')
  Nutrition get nutrition => throw _privateConstructorUsedError;
  @JsonKey(name: 'mealComponents')
  List<MealComponent> get mealComponents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealCopyWith<Meal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) then) =
      _$MealCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @DatetimeJsonConverter() @JsonKey(name: 'created') DateTime created,
      @JsonKey(name: 'image') String imageUrl,
      @JsonKey(name: 'nutrition') Nutrition nutrition,
      @JsonKey(name: 'mealComponents') List<MealComponent> mealComponents});

  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$MealCopyWithImpl<$Res> implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._value, this._then);

  final Meal _value;
  // ignore: unused_field
  final $Res Function(Meal) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? created = freezed,
    Object? imageUrl = freezed,
    Object? nutrition = freezed,
    Object? mealComponents = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrition,
      mealComponents: mealComponents == freezed
          ? _value.mealComponents
          : mealComponents // ignore: cast_nullable_to_non_nullable
              as List<MealComponent>,
    ));
  }

  @override
  $NutritionCopyWith<$Res> get nutrition {
    return $NutritionCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value));
    });
  }
}

/// @nodoc
abstract class _$$_MealCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$$_MealCopyWith(_$_Meal value, $Res Function(_$_Meal) then) =
      __$$_MealCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @DatetimeJsonConverter() @JsonKey(name: 'created') DateTime created,
      @JsonKey(name: 'image') String imageUrl,
      @JsonKey(name: 'nutrition') Nutrition nutrition,
      @JsonKey(name: 'mealComponents') List<MealComponent> mealComponents});

  @override
  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$_MealCopyWithImpl<$Res> extends _$MealCopyWithImpl<$Res>
    implements _$$_MealCopyWith<$Res> {
  __$$_MealCopyWithImpl(_$_Meal _value, $Res Function(_$_Meal) _then)
      : super(_value, (v) => _then(v as _$_Meal));

  @override
  _$_Meal get _value => super._value as _$_Meal;

  @override
  $Res call({
    Object? id = freezed,
    Object? created = freezed,
    Object? imageUrl = freezed,
    Object? nutrition = freezed,
    Object? mealComponents = freezed,
  }) {
    return _then(_$_Meal(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrition,
      mealComponents: mealComponents == freezed
          ? _value._mealComponents
          : mealComponents // ignore: cast_nullable_to_non_nullable
              as List<MealComponent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meal implements _Meal {
  _$_Meal(
      {@JsonKey(name: 'id')
          required this.id,
      @DatetimeJsonConverter()
      @JsonKey(name: 'created')
          required this.created,
      @JsonKey(name: 'image')
          required this.imageUrl,
      @JsonKey(name: 'nutrition')
          required this.nutrition,
      @JsonKey(name: 'mealComponents')
          required final List<MealComponent> mealComponents})
      : _mealComponents = mealComponents;

  factory _$_Meal.fromJson(Map<String, dynamic> json) => _$$_MealFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @DatetimeJsonConverter()
  @JsonKey(name: 'created')
  final DateTime created;
  @override
  @JsonKey(name: 'image')
  final String imageUrl;
  @override
  @JsonKey(name: 'nutrition')
  final Nutrition nutrition;
  final List<MealComponent> _mealComponents;
  @override
  @JsonKey(name: 'mealComponents')
  List<MealComponent> get mealComponents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealComponents);
  }

  @override
  String toString() {
    return 'Meal(id: $id, created: $created, imageUrl: $imageUrl, nutrition: $nutrition, mealComponents: $mealComponents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meal &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.nutrition, nutrition) &&
            const DeepCollectionEquality()
                .equals(other._mealComponents, _mealComponents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(nutrition),
      const DeepCollectionEquality().hash(_mealComponents));

  @JsonKey(ignore: true)
  @override
  _$$_MealCopyWith<_$_Meal> get copyWith =>
      __$$_MealCopyWithImpl<_$_Meal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealToJson(
      this,
    );
  }
}

abstract class _Meal implements Meal {
  factory _Meal(
      {@JsonKey(name: 'id')
          required final String id,
      @DatetimeJsonConverter()
      @JsonKey(name: 'created')
          required final DateTime created,
      @JsonKey(name: 'image')
          required final String imageUrl,
      @JsonKey(name: 'nutrition')
          required final Nutrition nutrition,
      @JsonKey(name: 'mealComponents')
          required final List<MealComponent> mealComponents}) = _$_Meal;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$_Meal.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @DatetimeJsonConverter()
  @JsonKey(name: 'created')
  DateTime get created;
  @override
  @JsonKey(name: 'image')
  String get imageUrl;
  @override
  @JsonKey(name: 'nutrition')
  Nutrition get nutrition;
  @override
  @JsonKey(name: 'mealComponents')
  List<MealComponent> get mealComponents;
  @override
  @JsonKey(ignore: true)
  _$$_MealCopyWith<_$_Meal> get copyWith => throw _privateConstructorUsedError;
}
