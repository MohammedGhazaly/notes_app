import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_item_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  // final data = const [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: NoteItem(),
            );
          }),
    );
  }
}
