// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Nutrition _$$_NutritionFromJson(Map<String, dynamic> json) => _$_Nutrition(
      name: json['name'] as String,
      unit: json['unit'] as String,
      value: json['value'] as int,
      valueWithPrecision: (json['valueWithPrecision'] as num).toDouble(),
      abbreviation:
          Abbreviation.fromJson(json['abbreviation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NutritionToJson(_$_Nutrition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'unit': instance.unit,
      'value': instance.value,
      'valueWithPrecision': instance.valueWithPrecision,
      'abbreviation': instance.abbreviation,
    };
