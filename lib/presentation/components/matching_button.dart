import 'package:flutter/material.dart';

class MatchingButton extends StatelessWidget {
  const MatchingButton({
    Key? key,
    required this.onTap,
    required this.iconData,
    required this.color,
  }) : super(key: key);

  final Function onTap;
  final IconData iconData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onTap(),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(20),
        backgroundColor: color,
        elevation: 0,
      ),
      child: Icon(iconData, color: Colors.white),
    );
  }
}
