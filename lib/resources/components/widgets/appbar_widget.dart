import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';

PreferredSizeWidget appbarWidget({label, actionIcon}) => AppBar(
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 20,
        ),
      ),
      iconTheme: const IconThemeData(
        size: 30,
      ),
      centerTitle: true,
      title: CustomText(
        label: label ?? '',
        fontSize: 17,
        color: midWhiteColor,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 14.0),
          child: actionIcon,
        )
      ],
    );
