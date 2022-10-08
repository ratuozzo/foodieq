import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/injection/injector_container.dart';
import 'package:foodieq/presentation/components/foodieq_appbar.dart';
import 'package:foodieq/presentation/matching_view/components/meal_card.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MatchingView extends StatelessWidget {
  const MatchingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FoodieqAppbar(),
      body: BlocProvider<MealsCubit>(
        create: (context) => getIt<MealsCubit>()..getMeals(),
        child: BlocBuilder<MealsCubit, MealsState>(
          builder: (context, state) {
            if (state.status == MealsStatus.fail) {
              return const Center(child: Text('Oops! an error occurred :)'));
            }
            if (state.status == MealsStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.meals.isEmpty) {
              return const Center(child: Text('No meals for you, diet time!'));
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: state.meals
                      .map(
                        (meal) => SizedBox(
                          height: 100.h - kToolbarHeight * 1.85,
                          width: 100.w,
                          child: MealCard(
                            meal: meal,
                            isFirst: state.meals.first == meal,
                          ),
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
