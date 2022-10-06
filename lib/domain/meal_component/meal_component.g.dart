// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MealComponent _$$_MealComponentFromJson(Map<String, dynamic> json) =>
    _$_MealComponent(
      mainIngredient: json['mainIngredient'] == null
          ? null
          : Ingredient.fromJson(json['mainIngredient'] as Map<String, dynamic>),
      supplementaryIngredients:
          (json['supplementaryIngredients'] as List<dynamic>?)
              ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_MealComponentToJson(_$_MealComponent instance) =>
    <String, dynamic>{
      'mainIngredient': instance.mainIngredient,
      'supplementaryIngredients': instance.supplementaryIngredients,
    };
