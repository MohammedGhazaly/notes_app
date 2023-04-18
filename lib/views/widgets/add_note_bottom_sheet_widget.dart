import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_button_widget.dart';
import 'package:notes_app/views/widgets/custom_text_field_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 32,
            ),
            CustomTextFieldWidget(
              hintText: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFieldWidget(
              hintText: "Content",
              maxLines: 5,
            ),
            SizedBox(
              height: 48,
            ),
            CustomButtonWidget(),
            SizedBox(
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
