import 'package:flutter/material.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/view_models/services/splash_screen_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashScreenService screenService = SplashScreenService();
  @override
  void initState() {
    // screenService.loadScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(ImageUrls.logoURL)),
    );
  }
}
