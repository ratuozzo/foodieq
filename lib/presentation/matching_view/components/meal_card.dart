import 'package:flutter/material.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/presentation/matching_view/components/meal_ingredients.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MealCard extends StatelessWidget {
  const MealCard({
    Key? key,
    required this.meal,
  }) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: const Color(0xFFEBE8FD),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80.w,
            width: 80.w,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              image: DecorationImage(
                image: NetworkImage(meal.imageUrl),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Calories',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  meal.nutrition.energy.value.toString(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          MealIngredients(
            mealComponents: meal.mealComponents,
          ),
        ],
      ),
    );
  }
}
