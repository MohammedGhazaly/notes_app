import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: "Title",
          hintStyle: TextStyle(color: kPrimaryColor),
          border: buildBorder(borderColor: Colors.white),
          enabledBorder: buildBorder(borderColor: Colors.white),
          focusedBorder: buildBorder(borderColor: kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder({required Color borderColor}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: borderColor));
  }
}
