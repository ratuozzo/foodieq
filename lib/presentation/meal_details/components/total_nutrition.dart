import 'package:flutter/material.dart';
import 'package:foodieq/domain/nutrition/nutrition.dart';
import 'package:foodieq/presentation/components/nutrition_detail_row.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TotalNutrition extends StatefulWidget {
  const TotalNutrition({
    Key? key,
    required this.title,
    required this.nutrition,
  }) : super(key: key);

  final String title;
  final Nutrition nutrition;

  @override
  State<TotalNutrition> createState() => _TotalNutritionState();
}

class _TotalNutritionState extends State<TotalNutrition> {
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
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: SizedBox(
                  width: 100.w - 30,
                  child: NutritionDetailRow(
                    nutrition: widget.nutrition,
                    totalCarbohydrates: widget.nutrition.carbohydrates.value,
                    totalFat: widget.nutrition.fatTotal.value,
                    totalProtetin: widget.nutrition.protein.value,
                    totalEnergy: widget.nutrition.energy.value,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
