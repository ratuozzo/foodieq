import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodieq/domain/ingredient/ingredient.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/helpers/ingredients_helper.dart';
import 'package:foodieq/presentation/components/nutrition_detail_row.dart';
import 'package:foodieq/presentation/meal_details/meal_details.dart';

class MealCardTile extends StatelessWidget {
  const MealCardTile({
    Key? key,
    required this.meal,
  }) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    List<Ingredient> mainIngredients = getMainIngredients(meal);

    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => MealDetails(
            meal: meal,
          ),
        ),
      ),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              child: SizedBox(
                height: 100,
                width: 100,
                child: CachedNetworkImage(
                  imageUrl: meal.imageUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(
                        children: mainIngredients
                            .map(
                              (ingredient) => Text(
                                '${ingredient.name}${ingredient != mainIngredients.last ? ', ' : '.'}',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: NutritionDetailRow(
                        nutrition: meal.nutrition,
                        totalCarbohydrates: meal.nutrition.carbohydrates.value,
                        totalFat: meal.nutrition.fatTotal.value,
                        totalProtetin: meal.nutrition.protein.value,
                        totalEnergy: meal.nutrition.energy.value,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
