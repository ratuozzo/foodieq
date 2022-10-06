import 'package:foodieq/domain/ingredient/ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_component.freezed.dart';
part 'meal_component.g.dart';

@freezed
class MealComponent with _$MealComponent {
  factory MealComponent({
    @JsonKey(name: 'mainIngredient') Ingredient? mainIngredient,
    @JsonKey(name: 'supplementaryIngredients')
        List<Ingredient>? supplementaryIngredients,
  }) = _MealComponent;

  factory MealComponent.fromJson(Map<String, dynamic> json) =>
      _$MealComponentFromJson(json);
}
