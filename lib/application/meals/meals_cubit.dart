import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/domain/meal/meal.dart';
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
        state.copyWith(meals: meals, status: MealsStatus.success),
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
}
