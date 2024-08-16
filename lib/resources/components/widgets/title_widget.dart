import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';

class TitleWidget extends StatelessWidget {
  final String? righText;
  final String? leftText;
  final double? righTextfontSize;
  final double? leftTextfontSize;

  const TitleWidget(
      {super.key,
      this.leftText,
      this.righText,
      this.righTextfontSize,
      this.leftTextfontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          label: righText ?? "PlayList",
          color: midWhiteColor,
          fontSize: righTextfontSize ?? 15,
        ),
        CustomText(
          label: leftText ?? "view All",
          color: coralColor,
          fontSize: leftTextfontSize ?? 13,
        )
      ],
    );
  }
}
