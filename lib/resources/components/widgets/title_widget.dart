import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';

class TitleWidget extends StatelessWidget {
  final String? righText;
  final String? leftText;
  final double? righTextfontSize;
  final double? leftTextfontSize;
  final FontWeight? leftTextfontWeight;
  final FontWeight? righTextfontWeight;

  const TitleWidget(
      {super.key,
      this.leftText,
      this.righText,
      this.righTextfontSize,
      this.leftTextfontSize,
      this.righTextfontWeight,
      this.leftTextfontWeight});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          label: leftText ?? "PlayList",
          color: midWhiteColor,
          fontSize: leftTextfontSize ?? 15,
          fontWeight: leftTextfontWeight,
        ),
        CustomText(
          label: righText ?? "view All",
          color: coralColor,
          fontSize: righTextfontSize ?? 13,
          fontWeight: righTextfontWeight,
        )
      ],
    );
  }
}
