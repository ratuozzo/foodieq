import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/injection/injector_container.dart';
import 'package:foodieq/presentation/matching_view/components/meal_card.dart';

class MatchingView extends StatelessWidget {
  const MatchingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF9586C8),
      ),
      body: BlocProvider<MealsCubit>(
        create: (context) => getIt<MealsCubit>()..getMeals(),
        child: BlocBuilder<MealsCubit, MealsState>(
          builder: (context, state) {
            if (state.status == MealsStatus.fail) {
              return const Text('Oops! an error occurred :)');
            }
            if (state.status == MealsStatus.loading) {
              return const CircularProgressIndicator();
            }
            if (state.meals.isEmpty) {
              return const Text('No meals for you, diet time!');
            }
            return Center(
              child: MealCard(
                meal: state.meals[0],
              ),
            );
          },
        ),
      ),
    );
  }
}
