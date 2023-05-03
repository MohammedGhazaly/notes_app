import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.ontTap});
  final String title;
  final IconData icon;
  final void Function()? ontTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        CustomSearchIcon(
          ontTap: ontTap,
          icon: icon,
        )
      ],
    );
  }
}
