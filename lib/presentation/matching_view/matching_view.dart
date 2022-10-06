import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/injection/injector_container.dart';

class MatchingView extends StatelessWidget {
  const MatchingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider<MealsCubit>(
        create: (context) => getIt<MealsCubit>()..getMeals(),
        child: BlocBuilder<MealsCubit, MealsState>(
          builder: (context, state) {
            return SizedBox(
              child: ElevatedButton(
                child: const Text(''),
                onPressed: () {
                  context.read<MealsCubit>().getMeals();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
