import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/views/widgets/custom_text_field_widget.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(
                height: 4,
              ),
              CustomAppBar(
                title: "Edit Note",
                icon: FontAwesomeIcons.check,
              ),
              SizedBox(
                height: 50,
              ),
              CustomTextFieldWidget(
                hintText: "Title",
                validatorFunction: (value) {},
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFieldWidget(
                hintText: "Content",
                maxLines: 5,
                validatorFunction: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
