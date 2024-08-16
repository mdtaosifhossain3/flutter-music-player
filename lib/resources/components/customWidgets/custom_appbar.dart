import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';

PreferredSizeWidget customAppbar(
    {required BuildContext context, leadingIcon, actions, title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.transparent,
    elevation: 0.00,
    leading: leadingIcon,
    actions: actions,
    title: title,
  );
}
