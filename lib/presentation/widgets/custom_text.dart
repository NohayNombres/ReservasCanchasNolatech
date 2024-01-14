import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.fontSize,
      this.fontWeight,
      this.textColor,
      this.textAlign,
      this.textDecoration,
      this.onTap});

  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        textScaleFactor: 1,
        textAlign: textAlign,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: textColor, decoration: textDecoration),
      ),
    );
  }
}
