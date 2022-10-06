// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meal _$$_MealFromJson(Map<String, dynamic> json) => _$_Meal(
      id: json['id'] as String,
      created:
          const DatetimeJsonConverter().fromJson(json['created'] as String),
      imageUrl: json['image'] as String,
      nutrition: Nutrition.fromJson(json['nutrition'] as Map<String, dynamic>),
      mealComponents: (json['mealComponents'] as List<dynamic>)
          .map((e) => MealComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MealToJson(_$_Meal instance) => <String, dynamic>{
      'id': instance.id,
      'created': const DatetimeJsonConverter().toJson(instance.created),
      'image': instance.imageUrl,
      'nutrition': instance.nutrition,
      'mealComponents': instance.mealComponents,
    };
