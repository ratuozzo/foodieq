import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/domain/ingredient/ingredient.dart';
import 'package:foodieq/domain/meal/meal.dart';
import 'package:foodieq/domain/meal_component/meal_component.dart';
import 'package:foodieq/presentation/components/calories_item.dart';
import 'package:foodieq/presentation/matching_view/components/matching_buttons.dart';
import 'package:foodieq/presentation/matching_view/components/card_ingredients.dart';
import 'package:foodieq/presentation/meal_details/meal_details.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum DragStatus {
  neutral,
  liking,
  disliking,
}

class MealCard extends StatefulWidget {
  const MealCard({
    Key? key,
    required this.meal,
    required this.isFirst,
  }) : super(key: key);

  final Meal meal;
  final bool isFirst;

  @override
  State<MealCard> createState() => _MealCardState();
}

class _MealCardState extends State<MealCard> {
  Offset position = Offset.zero;
  bool isDragging = false;
  double angle = 0;
  DragStatus dragStatus = DragStatus.neutral;
  final swipeDelta = 80;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 80.h,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GestureDetector(
          onPanStart: (_) => dragStart(),
          onPanUpdate: (details) => dragUpdate(details),
          onPanEnd: (_) => dragEnd(),
          child: LayoutBuilder(
            builder: (context, constraints) {
              int milliseconds = isDragging ? 0 : 400;
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedContainer(
                    curve: Curves.easeInOut,
                    duration: Duration(
                      milliseconds: milliseconds,
                    ),
                    transform: Matrix4.identity()
                      ..translate(position.dx, position.dy)
                      ..rotateZ(angle * pi / 180)
                      ..translate(position.dx, position.dy),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => MealDetails(
                            meal: widget.meal,
                            dislikeMeal: (meal) =>
                                context.read<MealsCubit>().dislikeMeal(meal),
                            likeMeal: (meal) =>
                                context.read<MealsCubit>().likeMeal(meal),
                          ),
                        ),
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: widget.isFirst ? 5 : 0.4,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: SizedBox(
                                height: 80.w,
                                width: 80.w,
                                child: CachedNetworkImage(
                                  imageUrl: widget.meal.imageUrl,
                                  color: dragStatus == DragStatus.neutral
                                      ? Colors.transparent
                                      : dragStatus == DragStatus.disliking
                                          ? Colors.red.withOpacity(0.4)
                                          : Colors.green.withOpacity(0.4),
                                  colorBlendMode: BlendMode.lighten,
                                  progressIndicatorBuilder:
                                      (context, url, progress) => Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircularProgressIndicator(
                                        value: progress.progress,
                                      ),
                                    ],
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            CaloriesItem(meal: widget.meal),
                            const SizedBox(height: 15),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Ingredients',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                            ),
                            CardIngredients(
                              ingredients: getMainIngredients(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  MatchingButtons(
                    meal: widget.meal,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  List<Ingredient> getMainIngredients() {
    List<Ingredient> output = [];
    for (MealComponent mealComponent in widget.meal.mealComponents) {
      if (mealComponent.mainIngredient != null) {
        output.add(mealComponent.mainIngredient!);
      }
    }
    return output;
  }

  void dragStart() {
    setState(() {
      isDragging = true;
    });
  }

  void dragUpdate(DragUpdateDetails details) {
    setState(() {
      position += details.delta;
      angle = 45 * position.dx / Device.width;
      if (position.dx >= swipeDelta) {
        dragStatus = DragStatus.liking;
      } else if (position.dx <= -swipeDelta) {
        dragStatus = DragStatus.disliking;
      } else {
        dragStatus = DragStatus.neutral;
      }
    });
  }

  void dragEnd() {
    if (position.dx >= swipeDelta) {
      setState(() {
        isDragging = false;
        angle = 20;
        position += Offset(2 * Device.width, 0);
      });
      context.read<MealsCubit>().likeMeal(widget.meal);
    } else if (position.dx <= -swipeDelta) {
      setState(() {
        isDragging = false;
        angle = 20;
        position += Offset(-(2 * Device.width), 0);
      });
      context.read<MealsCubit>().dislikeMeal(widget.meal);
    } else {
      setState(() {
        isDragging = false;
        angle = 0;
        position = Offset.zero;
      });
    }
  }
}
