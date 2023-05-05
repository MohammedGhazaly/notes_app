import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
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
    Color(0xffEE6352),
    Color(0xff08B2E3),
    Color(0xffEFE9F4),
    Color(0xff57A773),
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
                  BlocProvider.of<AddNoteCubit>(context).color =
                      colorsList[index];
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
