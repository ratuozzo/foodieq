import 'package:foodieq/domain/nutrition_detail/nutrition_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition.freezed.dart';
part 'nutrition.g.dart';

@freezed
class Nutrition with _$Nutrition {
  factory Nutrition({
    @JsonKey(name: 'carbohydrates') required NutritionDetail carbohydrates,
    @JsonKey(name: 'fatTotal') required NutritionDetail fatTotal,
    @JsonKey(name: 'protein') required NutritionDetail protein,
    @JsonKey(name: 'energy') required NutritionDetail energy,
  }) = _Nutrition;

  factory Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);
}
