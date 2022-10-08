import 'package:foodieq/domain/ingredient/ingredient.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/domain/meal_component/meal_component.dart';

List<Ingredient> getMainIngredients(Meal meal) {
  List<Ingredient> output = [];
  for (MealComponent mealComponent in meal.mealComponents) {
    if (mealComponent.mainIngredient != null) {
      output.add(mealComponent.mainIngredient!);
    }
  }
  return output;
}

List<Ingredient> getSupplementaryIngredients(Meal meal) {
  List<Ingredient> output = [];
  for (MealComponent mealComponent in meal.mealComponents) {
    if (mealComponent.supplementaryIngredients != null &&
        mealComponent.supplementaryIngredients!.isNotEmpty) {
      for (Ingredient ingredient in mealComponent.supplementaryIngredients!) {
        output.add(ingredient);
      }
    }
  }
  return output;
}
