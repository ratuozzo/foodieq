import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/helpers/ingredients_helper.dart';
import 'package:foodieq/presentation/components/calories_item.dart';
import 'package:foodieq/presentation/components/foodieq_appbar.dart';
import 'package:foodieq/presentation/components/matching_button.dart';
import 'package:foodieq/presentation/meal_details/components/ingredients.dart';
import 'package:foodieq/presentation/meal_details/components/total_nutrition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MealDetailsView extends StatelessWidget {
  const MealDetailsView({
    Key? key,
    required this.meal,
    this.likeMeal,
    this.dislikeMeal,
  }) : super(key: key);

  final Meal meal;
  final void Function(Meal meal)? likeMeal;
  final void Function(Meal meal)? dislikeMeal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FoodieqAppbar(),
      body: ListView(
        children: [
          SizedBox(
            height: 100.w,
            width: 100.w,
            child: CachedNetworkImage(
              imageUrl: meal.imageUrl,
              progressIndicatorBuilder: (context, url, progress) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    value: progress.progress,
                  ),
                ],
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CaloriesItem(meal: meal),
                const SizedBox(height: 15),
                TotalNutrition(
                  title: 'Total Nutrition',
                  nutrition: meal.nutrition,
                ),
                const SizedBox(height: 15),
                if (getMainIngredients(meal).isNotEmpty)
                  Ingredients(
                    title: 'Ingredients',
                    ingredients: getMainIngredients(meal),
                    meal: meal,
                  ),
                const SizedBox(height: 15),
                if (getSupplementaryIngredients(meal).isNotEmpty)
                  Ingredients(
                    title: 'Supplementary Ingredients',
                    ingredients: getSupplementaryIngredients(meal),
                    meal: meal,
                  ),
              ],
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: (dislikeMeal != null && likeMeal != null)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MatchingButton(
                  onTap: () {
                    dislikeMeal!(meal);
                    Navigator.of(context).pop();
                  },
                  iconData: Icons.close,
                  color: Colors.red,
                ),
                MatchingButton(
                  onTap: () {
                    likeMeal!(meal);
                    Navigator.of(context).pop();
                  },
                  iconData: Icons.check,
                  color: Colors.green,
                ),
              ],
            )
          : null,
    );
  }
}
