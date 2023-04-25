import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key, required this.onTap, this.IsLoading = false});
  final bool IsLoading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: IsLoading
              ? const SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  "Add",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.9),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
        ),
      ),
    );
  }
}
