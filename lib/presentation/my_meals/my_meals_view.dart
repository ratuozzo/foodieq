import 'package:flutter/material.dart';
import 'package:foodieq/presentation/components/foodieq_appbar.dart';
import 'package:foodieq/presentation/my_meals/components/disliked_meals.dart';
import 'package:foodieq/presentation/my_meals/components/liked_meals.dart';

class MyMealsView extends StatefulWidget {
  const MyMealsView({Key? key}) : super(key: key);

  @override
  State<MyMealsView> createState() => _MyMealsViewState();
}

class _MyMealsViewState extends State<MyMealsView> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FoodieqAppbar(),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              indicatorColor: const Color(0xFF9586C8),
              labelColor: Colors.black,
              onTap: (index) => setState(() {
                selectedTab = index;
              }),
              tabs: const [
                Tab(
                  child: Text('Disliked'),
                ),
                Tab(
                  child: Text('Liked'),
                ),
              ],
            ),
            Builder(builder: (_) {
              if (selectedTab == 0) {
                return const DislikedMeals();
              } else {
                return const LikedMeals();
              }
            }),
          ],
        ),
      ),
    );
  }
}
