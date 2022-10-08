import 'package:flutter_test/flutter_test.dart';
import 'package:foodieq/domain/abbreviation/abbreviation.dart';
import 'package:foodieq/domain/ingredient/ingredient.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/domain/meal_component/meal_component.dart';
import 'package:foodieq/domain/nutrition/nutrition.dart';
import 'package:foodieq/domain/nutrition_detail/nutrition_detail.dart';
import 'package:foodieq/helpers/ingredients_helper.dart';

void main() {
  Nutrition tNutrition = Nutrition(
    carbohydrates: NutritionDetail(
      name: 'Carbohydrates',
      unit: 'Gram',
      value: 24,
      valueWithPrecision: 24,
      abbreviation: Abbreviation(
        nutrient: 'Carbs',
        unit: 'g',
      ),
    ),
    fatTotal: NutritionDetail(
      name: 'Fats',
      unit: 'Gram',
      value: 41,
      valueWithPrecision: 41,
      abbreviation: Abbreviation(
        nutrient: 'Fat',
        unit: 'g',
      ),
    ),
    protein: NutritionDetail(
      name: 'Protein',
      unit: 'Gram',
      value: 41,
      valueWithPrecision: 41,
      abbreviation: Abbreviation(
        nutrient: 'Protein',
        unit: 'g',
      ),
    ),
    energy: NutritionDetail(
      name: 'Calories',
      unit: 'Kilocalories',
      value: 655,
      valueWithPrecision: 655,
      abbreviation: Abbreviation(
        nutrient: 'kcal',
        unit: 'kcal',
      ),
    ),
  );

  Meal tMealNoIngredients = Meal(
    id: '1',
    created: DateTime(2022),
    imageUrl: 'www.imageurl.com',
    nutrition: tNutrition,
    mealComponents: [],
  );

  List<Meal> tMeals = [
    Meal(
      id: '1',
      created: DateTime(2022),
      imageUrl: 'www.imageurl.com',
      nutrition: tNutrition,
      mealComponents: [
        MealComponent(
          mainIngredient: Ingredient(
            name: 'Beef',
            nutrition: tNutrition,
          ),
        ),
        MealComponent(
          mainIngredient: Ingredient(
            name: 'Eggplant',
            nutrition: tNutrition,
          ),
        ),
        MealComponent(
          mainIngredient: Ingredient(
            name: 'Corn',
            nutrition: tNutrition,
          ),
        ),
      ],
    ),
    Meal(
      id: '2',
      created: DateTime(2022),
      imageUrl: 'www.imageurl.com',
      nutrition: tNutrition,
      mealComponents: [
        MealComponent(
          mainIngredient: Ingredient(
            name: 'French Fries',
            nutrition: tNutrition,
          ),
        ),
        MealComponent(
          mainIngredient: Ingredient(
            name: 'Cream',
            nutrition: tNutrition,
          ),
        ),
        MealComponent(
          mainIngredient: Ingredient(
            name: 'Pork',
            nutrition: tNutrition,
          ),
          supplementaryIngredients: [
            Ingredient(
              name: 'Butter',
              nutrition: tNutrition,
            ),
            Ingredient(
              name: 'Parsley',
              nutrition: tNutrition,
            ),
          ],
        ),
      ],
    ),
    Meal(
      id: '3',
      created: DateTime(2022),
      imageUrl: 'www.imageurl.com',
      nutrition: tNutrition,
      mealComponents: [
        MealComponent(
          mainIngredient: Ingredient(
            name: 'French Fries',
            nutrition: tNutrition,
          ),
        ),
        MealComponent(
          mainIngredient: Ingredient(
            name: 'Ketchup',
            nutrition: tNutrition,
          ),
        ),
        MealComponent(
          mainIngredient: Ingredient(
            name: 'Pork Schnitzel',
            nutrition: tNutrition,
          ),
        ),
      ],
    ),
  ];

  group('getMainIngredients', () {
    test('Gets main ingredients of a meal', () {
      List<Ingredient> result = getMainIngredients(tMeals.first);
      expect(result.length, 3);
    });

    test('Returns empty when a meal has no main ingredients', () {
      List<Ingredient> result = getMainIngredients(tMealNoIngredients);
      expect(result.length, 0);
    });
  });

  group('getSupplementaryIngredients', () {
    test('Gets supplementary ingredients of a meal', () {
      List<Ingredient> result = getSupplementaryIngredients(tMeals[1]);
      expect(result.length, 2);
    });

    test('Returns empty when a meal has no supplementary ingredients', () {
      List<Ingredient> result = getSupplementaryIngredients(tMealNoIngredients);
      expect(result.length, 0);
    });
  });

  group('getAllMainIngredients', () {
    test('Gets all main ingredients of a list of meals without duplicates', () {
      List<Ingredient> result = getAllMainIngredients(tMeals);
      expect(result.length, 8);
    });

    test('Returns empty when a list of meals have no main ingredients', () {
      List<Ingredient> result = getAllMainIngredients([tMealNoIngredients]);
      expect(result.length, 0);
    });
  });
}
