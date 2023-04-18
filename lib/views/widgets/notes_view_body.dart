import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/views/widgets/note_item_list_view_widget.dart';
import 'package:notes_app/views/widgets/note_item_widget.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: const [
            SizedBox(
              height: 4,
            ),
            CustomAppBar(title: "Notes", icon: Icons.search),
            Expanded(child: NotesListView())
          ],
        ),
      ),
    );
  }
}
