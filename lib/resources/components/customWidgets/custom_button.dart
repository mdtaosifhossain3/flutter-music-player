import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final Color? bgColor;
  final Color? textColor;
  final Color? borderColor;
  final String btnName;
  final IconData? icon;
  final double? horizontalPadding;
  final double? fontSize;

  final Function? onClick;

  const CustomButton(
      {super.key,
      this.bgColor,
      this.icon,
      required this.btnName,
      this.textColor,
      this.borderColor,
      this.onClick,
      this.horizontalPadding,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onClick!;
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? Colors.transparent,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 25),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(color: borderColor ?? Colors.transparent)),
        ),
        child: Row(
          children: [
            icon != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Icon(
                      icon,
                      size: 12,
                    ),
                  )
                : const SizedBox(),
            Text(
              btnName,
              style: TextStyle(
                  color: textColor ?? midWhiteColor, fontSize: fontSize ?? 8),
            ),
          ],
        ));
  }
}
