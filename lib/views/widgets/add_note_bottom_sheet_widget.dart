import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_button_widget.dart';
import 'package:notes_app/views/widgets/custom_text_field_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, subtitle;
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
            height: 48,
          ),
          CustomButtonWidget(
            onTap: () {
              if (formKey.currentState!.validate()) {
              } else {}
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
