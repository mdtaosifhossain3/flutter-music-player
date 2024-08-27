import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/constants/theme.dart';
import 'package:music_player/views/bottomNavigatonBar/bottomNavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Music App',
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      home: const Bottomnavigationbar(),
      // getPages: AppRoutes.appRoutes(),
    );
  }
}
