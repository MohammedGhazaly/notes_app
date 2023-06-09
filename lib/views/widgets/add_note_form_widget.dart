import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view_widget.dart';
import 'package:notes_app/views/widgets/custom_button_widget.dart';
import 'package:notes_app/views/widgets/custom_text_field_widget.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFieldWidget(
            onSaved: (value) {
              title = value;
            },
            hintText: "Title",
            validatorFunction: (value) {
              if (value?.trim().isEmpty ?? true) {
                return "Field must not be empty.";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFieldWidget(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: "Content",
            maxLines: 5,
            validatorFunction: (value) {
              if (value?.trim().isEmpty ?? true) {
                return "Field must not be empty.";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 24,
          ),
          ColorsListView(),
          const SizedBox(
            height: 24,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButtonWidget(
                IsLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var formattedCurrentData =
                        DateFormat.yMd().format(DateTime.now());
                    BlocProvider.of<AddNoteCubit>(context).addNote(NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedCurrentData,
                        color: BlocProvider.of<AddNoteCubit>(context)
                            .color
                            .value));
                  } else {}
                },
              );
            },
          ),
          SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
