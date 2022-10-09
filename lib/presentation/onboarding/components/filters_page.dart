import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/presentation/components/ingredients_filters.dart';
import 'package:foodieq/presentation/matching/matching_view.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealsCubit, MealsState>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(height: 100),
            const Text(
              "Tell us if you are alergic to any of these ingredients",
              textAlign: TextAlign.center,
            ),
            const Text(
              "(or if you don't like any of these)",
              textAlign: TextAlign.center,
            ),
            const IngredientsFilters(),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => const MatchingView(),
                ),
              ),
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }
}
