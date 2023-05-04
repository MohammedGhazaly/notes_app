import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.itemColor});
  final bool isActive;
  final Color itemColor;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 32,
              backgroundColor: itemColor,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: itemColor,
          );
  }
}
