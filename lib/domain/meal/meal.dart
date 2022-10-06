import 'package:foodieq/domain/meal_component/meal_component.dart';
import 'package:foodieq/domain/nutrition/nutrition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal.freezed.dart';

@freezed
class Meal with _$Meal {
  factory Meal({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'created') required DateTime created,
    @JsonKey(name: 'image') required String imageUrl,
    @JsonKey(name: 'nutrition') required Nutrition nutrition,
    @JsonKey(name: 'mealComponents')
        required List<MealComponent> mealComponents,
  }) = _Meal;
}
