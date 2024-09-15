import 'dart:async';
import 'package:get/get.dart';
import 'package:music_player/views/bottomNavigatonBar/bottomNavigationBar.dart';

class SplashScreenService {
  void loadScreen() {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(const Bottomnavigationbar());
    });
  }
}
