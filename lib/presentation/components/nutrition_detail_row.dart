import 'package:flutter/material.dart';
import 'package:foodieq/domain/nutrition/nutrition.dart';
import 'package:foodieq/presentation/meal_details/components/nutrition_item.dart';

class NutritionDetailRow extends StatelessWidget {
  const NutritionDetailRow({
    Key? key,
    required this.nutrition,
    required this.totalCarbohydrates,
    required this.totalFat,
    required this.totalProtetin,
    required this.totalEnergy,
  }) : super(key: key);

  final Nutrition nutrition;
  final int totalCarbohydrates;
  final int totalFat;
  final int totalProtetin;
  final int totalEnergy;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NutritionItem(
          nutritionDetail: nutrition.carbohydrates,
          circleColor: Colors.blue,
          totalValue: totalCarbohydrates,
        ),
        NutritionItem(
          nutritionDetail: nutrition.fatTotal,
          circleColor: Colors.orange,
          totalValue: totalFat,
        ),
        NutritionItem(
          nutritionDetail: nutrition.protein,
          circleColor: Colors.red,
          totalValue: totalProtetin,
        ),
        NutritionItem(
          nutritionDetail: nutrition.energy,
          showUnit: false,
          circleColor: const Color(0xFFC0E246),
          totalValue: totalEnergy,
        ),
      ],
    );
  }
}
