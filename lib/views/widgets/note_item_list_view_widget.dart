import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_item_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: NoteItem(),
      );
    });
  }
}
