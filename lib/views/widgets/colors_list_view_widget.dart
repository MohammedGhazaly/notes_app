import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/colors_item_widget.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  // final bool isActive;
  int currentIndex = 1;
  List<Color> colorsList = [
    Color(0xff41729F),
    Color(0xff5885AF),
    Color(0xff274472),
    Color(0xffC3E0E5),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
          itemCount: colorsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  itemColor: colorsList[index],
                  isActive: index == currentIndex,
                ),
              ),
            );
          }),
    );
  }
}
