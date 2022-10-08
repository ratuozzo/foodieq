import 'package:flutter/material.dart';
import 'package:foodieq/domain/meal/meal.dart';

class CaloriesItem extends StatelessWidget {
  const CaloriesItem({
    Key? key,
    required this.meal,
  }) : super(key: key);
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Calories',
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            '${meal.nutrition.energy.value} ${meal.nutrition.energy.abbreviation.unit}',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
