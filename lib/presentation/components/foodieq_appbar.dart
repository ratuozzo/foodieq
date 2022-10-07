import 'package:flutter/material.dart';

class FoodieqAppbar extends StatelessWidget implements PreferredSizeWidget {
  const FoodieqAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF9586C8),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
