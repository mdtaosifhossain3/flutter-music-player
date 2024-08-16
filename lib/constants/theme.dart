import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';

final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: deepBlackColor,
    dividerColor: greyColor,
    dividerTheme: DividerThemeData(
      color: greyColor,
    ),
    appBarTheme: const AppBarTheme(
        backgroundColor: deepBlackColor,
        elevation: 0.00,
        surfaceTintColor: deepBlackColor),
    colorScheme:
        const ColorScheme.dark(surface: deepBlackColor, primary: primaryColor),
    primaryTextTheme: const TextTheme(
      headlineSmall: TextStyle(color: primaryColor),
    ));
