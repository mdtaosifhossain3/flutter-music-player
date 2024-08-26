import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';

PreferredSizeWidget appbarWidget({label}) => AppBar(
      iconTheme: const IconThemeData(
        size: 30,
      ),
      centerTitle: true,
      title: CustomText(
        label: label ?? '',
        fontSize: 17,
        color: midWhiteColor,
      ),
      actions: const [Icon(Icons.search)],
    );
