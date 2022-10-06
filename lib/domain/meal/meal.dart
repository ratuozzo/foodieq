import 'package:foodieq/domain/meal_component/meal_component.dart';
import 'package:foodieq/domain/nutrition/nutrition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal.freezed.dart';
part 'meal.g.dart';

@freezed
class Meal with _$Meal {
  factory Meal({
    @JsonKey(name: 'id') required String id,
    @DatetimeJsonConverter()
    @JsonKey(name: 'created')
        required DateTime created,
    @JsonKey(name: 'image') required String imageUrl,
    @JsonKey(name: 'nutrition') required Nutrition nutrition,
    @JsonKey(name: 'mealComponents')
        required List<MealComponent> mealComponents,
  }) = _Meal;

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);
}

class DatetimeJsonConverter extends JsonConverter<DateTime, String> {
  const DatetimeJsonConverter();

  @override
  DateTime fromJson(String json) =>
      DateTime.parse(json.substring(0, json.indexOf('['))).toLocal();

  @override
  String toJson(DateTime object) => object.toUtc().toIso8601String();
}
