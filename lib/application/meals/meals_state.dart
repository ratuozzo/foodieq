part of 'meals_cubit.dart';

enum MealsStatus {
  initial,
  loading,
  success,
  fail,
}

@freezed
class MealsState with _$MealsState {
  const factory MealsState({
    @Default(MealsStatus.initial) MealsStatus status,
    @Default([]) List<Meal> meals,
    @Default([]) List<Ingredient> ingredients,
    @Default([]) List<Meal> likedMeals,
    @Default([]) List<Meal> dislikedMeals,
    @Default([]) List<Ingredient> filteredIngredients,
  }) = _MealsState;
}
