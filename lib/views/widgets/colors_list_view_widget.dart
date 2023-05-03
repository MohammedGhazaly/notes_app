import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/colors_item_widget.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ColorItem(),
            );
          }),
    );
  }
}
