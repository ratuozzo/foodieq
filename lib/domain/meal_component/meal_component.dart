import 'package:foodieq/domain/ingredient/ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_component.freezed.dart';

@freezed
class MealComponent with _$MealComponent {
  factory MealComponent({
    @JsonKey(name: 'mainIngredient') required Ingredient mainIngredient,
    @JsonKey(name: 'supplementaryIngredients')
        required Ingredient supplementaryIngredients,
  }) = _MealComponent;
}
