import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/injection/injector_container.dart';
import 'package:foodieq/presentation/my_meals/components/meal_card_tile.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LikedMeals extends StatelessWidget {
  const LikedMeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<MealsCubit>(),
      child: BlocBuilder<MealsCubit, MealsState>(
        builder: (context, state) {
          return SizedBox(
            height: 100.h - kToolbarHeight * 2.7,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: state.likedMeals.isEmpty
                    ? const Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Text(
                          "It seems you don't like to eat",
                          textAlign: TextAlign.center,
                        ),
                      )
                    : Column(
                        children: state.likedMeals
                            .map(
                              (meal) => MealCardTile(meal: meal),
                            )
                            .toList(),
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
