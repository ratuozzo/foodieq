import 'package:flutter/material.dart';
import 'package:foodieq/domain/nutrition_detail/nutrition_detail.dart';

class NutritionItem extends StatelessWidget {
  const NutritionItem({
    Key? key,
    required this.nutritionDetail,
    this.showUnit = true,
    required this.circleColor,
  }) : super(key: key);

  final NutritionDetail nutritionDetail;
  final bool showUnit;
  final Color circleColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          nutritionDetail.abbreviation.nutrient,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: circleColor,
              width: 2,
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  nutritionDetail.value.toString(),
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                if (showUnit)
                  Text(
                    nutritionDetail.abbreviation.unit,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
