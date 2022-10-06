// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutritionDetail _$$_NutritionDetailFromJson(Map<String, dynamic> json) =>
    _$_NutritionDetail(
      name: json['name'] as String,
      unit: json['unit'] as String,
      value: json['value'] as int,
      valueWithPrecision: (json['valueWithPrecision'] as num).toDouble(),
      abbreviation:
          Abbreviation.fromJson(json['abbreviation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NutritionDetailToJson(_$_NutritionDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'unit': instance.unit,
      'value': instance.value,
      'valueWithPrecision': instance.valueWithPrecision,
      'abbreviation': instance.abbreviation,
    };
