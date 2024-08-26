import 'package:flutter/material.dart';
import 'package:music_player/resources/appUrls/icon_urls.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 61,
        ),
        ListTile(
          leading: Image.asset(IconUrls.youtubeIconURL),
          title: const Text('Display'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset(IconUrls.volumeIconURL),
          title: const Text('Audio'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset(IconUrls.headphonesIconURL),
          title: const Text('Headset'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset(IconUrls.padlockIconURL),
          title: const Text('Lock Screen'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset(IconUrls.advanceIconURL),
          title: const Text('Advanced'),
          onTap: () {},
        ),
        ListTile(
          leading: Image.asset(IconUrls.settingsIconURL),
          title: const Text('Other'),
          onTap: () {},
        ),
      ],
    );
  }
}
