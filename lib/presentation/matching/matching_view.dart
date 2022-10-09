import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/injection/injector_container.dart';
import 'package:foodieq/presentation/components/foodieq_appbar.dart';
import 'package:foodieq/presentation/matching/components/meal_card.dart';
import 'package:foodieq/presentation/my_meals/my_meals_view.dart';

class MatchingView extends StatelessWidget {
  const MatchingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FoodieqAppbar(
        showActions: true,
      ),
      body: BlocProvider<MealsCubit>.value(
        value: getIt<MealsCubit>(),
        child: BlocBuilder<MealsCubit, MealsState>(
          builder: (context, state) {
            if (state.status == MealsStatus.fail) {
              return const Center(child: Text('Oops! an error occurred :)'));
            }
            if (state.status == MealsStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            List<Meal> meals = context.read<MealsCubit>().getFilteredMeals();
            if (meals.isEmpty) {
              return Center(
                child: Column(
                  children: [
                    const SizedBox(height: 200),
                    const Text('No more meals for you, diet time!'),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const MyMealsView(),
                        ),
                      ),
                      child: const Text('My Meals'),
                    ),
                  ],
                ),
              );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  key: Key(meals.toString()),
                  children: meals
                      .map(
                        (meal) => MealCard(
                          meal: meal,
                          isFirst: state.meals.first == meal,
                        ),
                      )
                      .toList(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
