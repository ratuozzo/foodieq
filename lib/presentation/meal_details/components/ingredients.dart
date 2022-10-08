import 'package:flutter/material.dart';
import 'package:foodieq/domain/ingredient/ingredient.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/presentation/components/nutrition_detail_row.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Ingredients extends StatefulWidget {
  const Ingredients({
    Key? key,
    required this.title,
    required this.ingredients,
    required this.meal,
  }) : super(key: key);

  final String title;
  final List<Ingredient> ingredients;
  final Meal meal;

  @override
  State<Ingredients> createState() => _IngredientsState();
}

class _IngredientsState extends State<Ingredients> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () => setState(() {
              isExpanded = !isExpanded;
            }),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Icon(
                  isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                ),
              ],
            ),
          ),
          AnimatedCrossFade(
            crossFadeState: isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 250),
            firstChild: Container(),
            secondChild: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.ingredients
                    .map(
                      (ingredient) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ingredient.name,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: 100.w - 30,
                            child: NutritionDetailRow(
                              nutrition: ingredient.nutrition,
                              totalCarbohydrates:
                                  widget.meal.nutrition.carbohydrates.value,
                              totalFat: widget.meal.nutrition.fatTotal.value,
                              totalProtetin:
                                  widget.meal.nutrition.protein.value,
                              totalEnergy: widget.meal.nutrition.energy.value,
                            ),
                          ),
                          const SizedBox(height: 5),
                          if (ingredient != widget.ingredients.last)
                            Divider(
                              color: Colors.grey.withOpacity(0.4),
                              thickness: 1,
                              height: 10,
                            ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
