import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
// import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form_widget.dart';
// import 'package:notes_app/views/widgets/custom_button_widget.dart';
// import 'package:notes_app/views/widgets/custom_text_field_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
          if (state is AddNoteFailure) {}
        },
        builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: Padding(
                // ViewInsets => SoftKeyboard data
                padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    // كده هو بيطلع مسافة اد ارتفاع الكيبورد
                    // يعني الفكرة انك تعطي مسافة اد ارتفاع الكيبورد
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(child: AddNoteForm()),
              ));
        },
      ),
    );
  }
}
