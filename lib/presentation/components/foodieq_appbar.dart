import 'package:flutter/material.dart';
import 'package:foodieq/presentation/my_meals/my_meals_view.dart';

class FoodieqAppbar extends StatelessWidget implements PreferredSizeWidget {
  const FoodieqAppbar({
    Key? key,
    this.showActions = false,
  }) : super(key: key);

  final bool showActions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF9586C8),
      actions: showActions
          ? [
              PopupMenuButton(
                onSelected: (value) {
                  if (value == 0) {
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const MyMealsView(),
                      ),
                    );
                  }
                },
                itemBuilder: (menuContext) => [
                  PopupMenuItem(
                    value: 0,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Profile'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.food_bank,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('My meals'),
                      ],
                    ),
                  ),
                ],
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(Icons.menu),
                ),
              )
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
