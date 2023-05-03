import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.ontTap});
  final IconData icon;
  final void Function()? ontTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      onTap: ontTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Icon(
            icon,
            size: 24,
          ),
        ),
      ),
    );
  }
}
