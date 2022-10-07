import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MatchingButtons extends StatelessWidget {
  const MatchingButtons({
    Key? key,
    required this.meal,
  }) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 10.w, right: 10.w, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () => context.read<MealsCubit>().dislikeMeal(meal),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.red,
              elevation: 0,
            ),
            child: const Icon(Icons.close, color: Colors.white),
          ),
          ElevatedButton(
            onPressed: () => context.read<MealsCubit>().likeMeal(meal),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.green,
              elevation: 0,
            ),
            child: const Icon(Icons.check, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
