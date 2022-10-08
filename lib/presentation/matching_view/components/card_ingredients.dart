import 'package:flutter/material.dart';
import 'package:foodieq/domain/ingredient/ingredient.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CardIngredients extends StatelessWidget {
  const CardIngredients({
    Key? key,
    required this.ingredients,
    this.width,
  }) : super(key: key);

  final List<Ingredient> ingredients;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: width ?? 80.w,
      height: 40.w,
      child: Wrap(
        alignment: WrapAlignment.start,
        children: ingredients
            .map((ingredient) => Transform.scale(
                  scale: 0.9,
                  child: Chip(
                    elevation: 5,
                    backgroundColor: const Color(0xFFD7D1FD),
                    label: Text(
                      ingredient.name,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
