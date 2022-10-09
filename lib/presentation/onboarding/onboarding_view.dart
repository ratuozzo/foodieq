import 'package:flutter/material.dart';
import 'package:foodieq/presentation/onboarding/components/filters_page.dart';
import 'package:foodieq/presentation/onboarding/components/welcome_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        isTopSafeArea: true,
        isBottomSafeArea: true,
        globalBackgroundColor: const Color(0xFFEBE8FD),
        isProgressTap: false,
        pages: [
          PageViewModel(
            title: 'Welcome to Foodieq',
            bodyWidget: const WelcomePage(),
          ),
          PageViewModel(
            title: 'Before we start...',
            bodyWidget: const FiltersPage(),
          ),
        ],
        showDoneButton: false,
        showNextButton: false,
      ),
    );
  }
}
