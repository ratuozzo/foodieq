// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Nutrition _$$_NutritionFromJson(Map<String, dynamic> json) => _$_Nutrition(
      carbohydrates: NutritionDetail.fromJson(
          json['carbohydrates'] as Map<String, dynamic>),
      fatTotal:
          NutritionDetail.fromJson(json['fatTotal'] as Map<String, dynamic>),
      protein:
          NutritionDetail.fromJson(json['protein'] as Map<String, dynamic>),
      energy: NutritionDetail.fromJson(json['energy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NutritionToJson(_$_Nutrition instance) =>
    <String, dynamic>{
      'carbohydrates': instance.carbohydrates,
      'fatTotal': instance.fatTotal,
      'protein': instance.protein,
      'energy': instance.energy,
    };
