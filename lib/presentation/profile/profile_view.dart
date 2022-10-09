import 'package:flutter/material.dart';
import 'package:foodieq/presentation/components/foodieq_appbar.dart';
import 'package:foodieq/presentation/components/ingredients_filters.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FoodieqAppbar(showActions: false),
      body: ListView(
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
              children: const [
                Text("Do you have any alergies? or food you don't like"),
                IngredientsFilters(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
