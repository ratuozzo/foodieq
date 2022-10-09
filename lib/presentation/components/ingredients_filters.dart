import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/injection/injector_container.dart';

class IngredientsFilters extends StatelessWidget {
  const IngredientsFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<MealsCubit>(),
      child: BlocBuilder<MealsCubit, MealsState>(
        builder: (context, state) {
          if (state.status == MealsStatus.fail) {
            return const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Oops! an error just occurred'),
            );
          }
          if (state.status == MealsStatus.loading) {
            return const Padding(
              padding: EdgeInsets.only(top: 20),
              child: CircularProgressIndicator(),
            );
          }
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: state.ingredients
                  .map(
                    (ingredient) => ChoiceChip(
                      elevation: 5,
                      label: Text(ingredient.name),
                      selected: state.filteredIngredients.contains(ingredient),
                      selectedColor: Colors.red.withOpacity(0.4),
                      backgroundColor: Colors.grey.withOpacity(0.4),
                      onSelected: (value) => context
                          .read<MealsCubit>()
                          .addIngredientFilter(ingredient),
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
