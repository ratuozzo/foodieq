import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/presentation/components/foodieq_appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({
    Key? key,
    required this.meal,
  }) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FoodieqAppbar(),
      body: SizedBox(
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
    );
  }
}
