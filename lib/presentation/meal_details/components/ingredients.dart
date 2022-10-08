import 'package:flutter/material.dart';
import 'package:foodieq/domain/ingredient/ingredient.dart';
import 'package:foodieq/presentation/meal_details/components/nutrition_item.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Ingredients extends StatefulWidget {
  const Ingredients({
    Key? key,
    required this.title,
    required this.ingredients,
  }) : super(key: key);

  final String title;
  final List<Ingredient> ingredients;

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
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                NutritionItem(
                                  nutritionDetail:
                                      ingredient.nutrition.carbohydrates,
                                  circleColor: Colors.blue,
                                ),
                                NutritionItem(
                                  nutritionDetail:
                                      ingredient.nutrition.fatTotal,
                                  circleColor: Colors.orange,
                                ),
                                NutritionItem(
                                  nutritionDetail: ingredient.nutrition.protein,
                                  circleColor: Colors.red,
                                ),
                                NutritionItem(
                                  nutritionDetail: ingredient.nutrition.energy,
                                  showUnit: false,
                                  circleColor: const Color(0xFFC0E246),
                                ),
                              ],
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
