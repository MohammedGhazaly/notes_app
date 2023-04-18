import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Notes app",
          style: TextStyle(fontSize: 28),
        ),
        CustomSearchIcon()
      ],
    );
  }
}
