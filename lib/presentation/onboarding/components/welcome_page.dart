import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.green.withOpacity(0.4),
          alignment: Alignment.center,
          child: const Text(
            'Insert awesome logo here',
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 150),
        Text(
          'Here you will be able to see the nutrtitional details of different types of food and choose if you like them or not',
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
