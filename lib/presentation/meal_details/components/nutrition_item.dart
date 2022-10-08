import 'package:flutter/material.dart';
import 'package:foodieq/domain/nutrition_detail/nutrition_detail.dart';

class NutritionItem extends StatelessWidget {
  const NutritionItem({
    Key? key,
    required this.nutritionDetail,
    required this.totalValue,
    this.showUnit = true,
    required this.circleColor,
  }) : super(key: key);

  final NutritionDetail nutritionDetail;
  final int totalValue;
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
        const SizedBox(height: 5),
        SizedBox(
          width: 35,
          height: 35,
          child: Stack(
            children: [
              CircularProgressIndicator(
                value: (nutritionDetail.value / totalValue),
                color: circleColor,
                backgroundColor: Colors.grey.withOpacity(0.4),
              ),
              Center(
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
            ],
          ),
        ),
      ],
    );
  }
}
