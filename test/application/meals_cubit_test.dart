import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/domain/abbreviation/abbreviation.dart';
import 'package:foodieq/domain/ingredient/ingredient.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/domain/meal/meal_failure.dart';
import 'package:foodieq/domain/meal_component/meal_component.dart';
import 'package:foodieq/domain/nutrition/nutrition.dart';
import 'package:foodieq/domain/nutrition_detail/nutrition_detail.dart';
import 'package:foodieq/helpers/ingredients_helper.dart';
import 'package:foodieq/infrastructure/repositories/meal/meal_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'meals_cubit_test.mocks.dart';

@GenerateMocks([MealRepository])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late MealsCubit cubit;
  late MockMealRepository mockRepository;

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

  setUp(() {
    mockRepository = MockMealRepository();
    cubit = MealsCubit(repository: mockRepository);
  });

  group('getMeals', () {
    blocTest<MealsCubit, MealsState>(
      'emits [MealsState] with error when getMeals() fails',
      build: () {
        when(mockRepository.getMeals()).thenAnswer(
          (realInvocation) async => const Left(
            MealFailure.unexpected('error'),
          ),
        );
        return cubit;
      },
      act: (cubit) => cubit.getMeals(),
      expect: () => [
        const MealsState(
          status: MealsStatus.loading,
        ),
        const MealsState(
          status: MealsStatus.fail,
        ),
      ],
    );

    blocTest<MealsCubit, MealsState>(
      'emits [MealsState] with meals when getMeals() succeeds',
      build: () {
        when(mockRepository.getMeals()).thenAnswer(
          (realInvocation) async => Right(tMeals),
        );
        return cubit;
      },
      act: (cubit) => cubit.getMeals(),
      expect: () => [
        const MealsState(
          status: MealsStatus.loading,
        ),
        MealsState(
          meals: tMeals,
          ingredients: getAllMainIngredients(tMeals),
          status: MealsStatus.success,
        ),
      ],
    );
  });

  group('LikeMeal', () {
    blocTest<MealsCubit, MealsState>(
      'emits [MealsState] with a liked meal',
      build: () => cubit,
      seed: () => MealsState(
        meals: tMeals,
        ingredients: getAllMainIngredients(tMeals),
      ),
      act: (cubit) => cubit.likeMeal(tMeals.first),
      expect: () => [
        MealsState(
          meals: [tMeals[1], tMeals[2]],
          likedMeals: [tMeals.first],
          ingredients: getAllMainIngredients(tMeals),
        ),
      ],
    );
  });

  group('DislikeMeal', () {
    blocTest<MealsCubit, MealsState>(
      'emits [MealsState] with a disliked meal',
      build: () => cubit,
      seed: () => MealsState(
        meals: tMeals,
        ingredients: getAllMainIngredients(tMeals),
      ),
      act: (cubit) => cubit.dislikeMeal(tMeals.first),
      expect: () => [
        MealsState(
          meals: [tMeals[1], tMeals[2]],
          dislikedMeals: [tMeals.first],
          ingredients: getAllMainIngredients(tMeals),
        ),
      ],
    );
  });

  group('addIngredientFilter', () {
    blocTest<MealsCubit, MealsState>(
      'emits [MealsState] with the added ingredient filter',
      build: () => cubit,
      act: (cubit) => cubit.addIngredientFilter(
        Ingredient(
          name: 'French Fries',
          nutrition: tNutrition,
        ),
      ),
      expect: () => [
        MealsState(
          filteredIngredients: [
            Ingredient(
              name: 'French Fries',
              nutrition: tNutrition,
            ),
          ],
        ),
      ],
    );

    blocTest<MealsCubit, MealsState>(
      'emits [MealsState] without the removed ingredient filter',
      build: () => cubit,
      seed: () => MealsState(
        filteredIngredients: [
          Ingredient(
            name: 'French Fries',
            nutrition: tNutrition,
          ),
        ],
      ),
      act: (cubit) => cubit.addIngredientFilter(
        Ingredient(
          name: 'French Fries',
          nutrition: tNutrition,
        ),
      ),
      expect: () => [
        const MealsState(
          filteredIngredients: [],
        ),
      ],
    );
  });

  group('getFilteredMeals', () {
    blocTest<MealsCubit, MealsState>(
      'returns all meals when no filters are selected',
      build: () => cubit,
      seed: () => MealsState(
        meals: tMeals,
        ingredients: getAllMainIngredients(tMeals),
      ),
      act: (cubit) => cubit.getFilteredMeals(),
      verify: (bloc) {
        List<Meal> result = bloc.getFilteredMeals();
        expect(result.length, 3);
      },
    );

    blocTest<MealsCubit, MealsState>(
      'returns meals after applying filters',
      build: () => cubit,
      seed: () => MealsState(
        meals: tMeals,
        ingredients: getAllMainIngredients(tMeals),
        filteredIngredients: [
          Ingredient(
            name: 'French Fries',
            nutrition: tNutrition,
          ),
        ],
      ),
      act: (cubit) => cubit.getFilteredMeals(),
      verify: (bloc) {
        List<Meal> result = bloc.getFilteredMeals();
        expect(result.length, 1);
      },
    );
  });
}
