import 'package:flutter/material.dart';

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
