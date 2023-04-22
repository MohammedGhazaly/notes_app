import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        // بقول لو القيمة بنول اعمل شيك اذا كان فاضي ولا لا
        // طب لو بن
        // اعمل شيك انه مش بنول وانه مش فاضي
        // هاااااااااام
        // يعني السطر ده لو هي مش بنول شوفها هي فاضية ولا لا
        // طب فرضا كانت بنول يعني مش هيتشيك علي دالة ايز امتي
        // وبالتالي هدخله جو برضه
        // اللي هو هينفذ اللي بعد علامتين الاستفهام
        if (value?.isEmpty ?? true) {
          return "Field is empty";
        } else {
          null;
        }
      },
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
