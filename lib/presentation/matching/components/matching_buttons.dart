import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/presentation/components/matching_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MatchingButtons extends StatelessWidget {
  const MatchingButtons({
    Key? key,
    required this.meal,
    this.padding,
  }) : super(key: key);

  final Meal meal;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          EdgeInsets.only(top: 20, left: 15.w, right: 15.w, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MatchingButton(
            onTap: () => context.read<MealsCubit>().dislikeMeal(meal),
            iconData: Icons.close,
            color: Colors.red,
          ),
          MatchingButton(
            onTap: () => context.read<MealsCubit>().likeMeal(meal),
            iconData: Icons.check,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
