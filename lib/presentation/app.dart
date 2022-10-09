import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodieq/application/meals/meals_cubit.dart';
import 'package:foodieq/injection/injector_container.dart';
import 'package:foodieq/presentation/onboarding/onboarding_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MealsCubit>(
      create: (context) => getIt<MealsCubit>()..getMeals(),
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) => MaterialApp(
          title: 'Foodieq',
          theme: ThemeData(
            pageTransitionsTheme: PageTransitionsTheme(
              builders:
                  Map<TargetPlatform, PageTransitionsBuilder>.fromIterable(
                TargetPlatform.values,
                value: (dynamic _) => const FadeUpwardsPageTransitionsBuilder(),
              ),
            ),
          ),
          home: const OnboardingView(),
        ),
      ),
    );
  }
}
