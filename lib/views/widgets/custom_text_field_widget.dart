import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget(
      {super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hintText,
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
