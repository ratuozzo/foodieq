import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/domain/ingredient/ingredient.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/helpers/ingredients_helper.dart';
import 'package:foodieq/infrastructure/repositories/meal/meal_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meals_state.dart';
part 'meals_cubit.freezed.dart';

class MealsCubit extends Cubit<MealsState> {
  MealsCubit({
    required this.repository,
  }) : super(const MealsState());

  final MealRepository repository;

  void getMeals() async {
    emit(
      state.copyWith(
        status: MealsStatus.loading,
      ),
    );

    final response = await repository.getMeals();
    response.fold(
      (failure) => emit(
        state.copyWith(status: MealsStatus.fail),
      ),
      (meals) => emit(
        state.copyWith(
          meals: meals,
          ingredients: getAllMainIngredients(meals),
          status: MealsStatus.success,
        ),
      ),
    );
  }

  void likeMeal(Meal meal) {
    emit(
      state.copyWith(
        meals: state.meals.where((item) => item.id != meal.id).toList(),
        likedMeals: state.likedMeals.toList()..add(meal),
      ),
    );
  }

  void dislikeMeal(Meal meal) {
    emit(
      state.copyWith(
        meals: state.meals.where((item) => item.id != meal.id).toList(),
        dislikedMeals: state.dislikedMeals.toList()..add(meal),
      ),
    );
  }

  void addIngredientFilter(Ingredient ingredient) {
    List<Ingredient> newList = state.filteredIngredients.toList();
    if (!newList.remove(ingredient)) {
      newList.add(ingredient);
    }
    emit(
      state.copyWith(
        filteredIngredients: newList,
      ),
    );
  }

  List<Meal> getFilteredMeals() {
    return state.meals
        .where((meal) => getMainIngredients(meal).every(
            (ingredient) => !state.filteredIngredients.contains(ingredient)))
        .toList();
  }

  @override
  Future<void> close() {
    print('closing cubit');
    return super.close();
  }
}
