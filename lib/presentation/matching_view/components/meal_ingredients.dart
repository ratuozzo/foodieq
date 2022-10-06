import 'package:flutter/material.dart';
import 'package:foodieq/domain/meal_component/meal_component.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MealIngredients extends StatelessWidget {
  const MealIngredients({
    Key? key,
    required this.mealComponents,
  }) : super(key: key);

  final List<MealComponent> mealComponents;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 80.w,
      height: 40.w,
      child: Wrap(
        alignment: WrapAlignment.start,
        children: mealComponents
            .map(
              (mealComponent) => mealComponent.mainIngredient != null
                  ? Transform.scale(
                      scale: 0.9,
                      child: Chip(
                        elevation: 5,
                        backgroundColor: const Color(0xFFD7D1FD),
                        label: Text(
                          mealComponent.mainIngredient!.name,
                        ),
                      ),
                    )
                  : Container(),
            )
            .toList(),
      ),
    );
  }
}
