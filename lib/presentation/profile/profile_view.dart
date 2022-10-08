import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/injection/injector_container.dart';
import 'package:foodieq/presentation/components/foodieq_appbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FoodieqAppbar(showActions: false),
      body: BlocProvider<MealsCubit>.value(
        value: getIt<MealsCubit>(),
        child: BlocBuilder<MealsCubit, MealsState>(
          builder: (context, state) {
            return ListView(
              children: [
                const SizedBox(height: 50),
                SizedBox(
                  width: 30.w,
                  height: 30.w,
                  child: const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      const Text(
                          "Do you have any alergies? or food you don't like"),
                      Wrap(
                        spacing: 10,
                        alignment: WrapAlignment.center,
                        children: state.ingredients
                            .map(
                              (ingredient) => ChoiceChip(
                                elevation: 5,
                                label: Text(ingredient.name),
                                selected: state.filteredIngredients
                                    .contains(ingredient),
                                selectedColor: Colors.red.withOpacity(0.4),
                                backgroundColor: Colors.grey.withOpacity(0.4),
                                onSelected: (value) => context
                                    .read<MealsCubit>()
                                    .addIngredientFilter(ingredient),
                              ),
                            )
                            .toList(),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
