import 'dart:async';
import 'package:get/get.dart';
import 'package:music_player/resources/routes/routes_name.dart';

class SplashScreenService {
  void loadScreen() {
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(RoutesName.splashScreen);
    });
  }
}
