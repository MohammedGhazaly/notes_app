import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/views/widgets/custom_text_field_widget.dart';
import 'package:notes_app/views/widgets/edit_notes_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    print(widget.note.title);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                CustomAppBar(
                  ontTap: () {
                    // if (title != null) {
                    //   widget.note.title = title!;
                    // }
                    widget.note.title = title ?? widget.note.title;
                    widget.note.subTitle = subTitle ?? widget.note.subTitle;
                    widget.note.save();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    Navigator.pop(context);
                  },
                  title: "Edit Note",
                  icon: FontAwesomeIcons.check,
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomTextFieldWidget(
                  onChangedFunction: (value) {
                    title = value;
                  },
                  hintText: widget.note.title,
                  validatorFunction: (value) {},
                  onSaved: (value) {},
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFieldWidget(
                  onChangedFunction: (value) {
                    subTitle = value;
                  },
                  hintText: widget.note.title,
                  maxLines: 5,
                  validatorFunction: (value) {},
                  onSaved: (value) {},
                ),
                const SizedBox(
                  height: 16,
                ),
                EditNoteColorsList(
                  note: widget.note,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
