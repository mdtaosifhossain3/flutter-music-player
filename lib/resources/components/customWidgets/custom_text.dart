import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';

class CustomText extends StatelessWidget {
  final String label;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const CustomText(
      {super.key,
      this.color,
      this.fontSize = 18,
      this.fontWeight,
      this.textAlign,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign ?? TextAlign.left,
      style: TextStyle(
          color: color ?? primaryColor,
          fontSize: fontSize,
          fontWeight: fontWeight ?? FontWeight.normal),
    );
  }
}
