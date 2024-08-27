import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/icon_urls.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: deepBlackColor,
      shadowColor: greyColor,
      elevation: 20,
      child: ListView(
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(color: drawerHeaderColor),
              child: Column(
                children: [
                  Image.asset(
                    ImageUrls.logoURL,
                    width: 55,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CustomText(
                            label: "887",
                            fontSize: 12,
                          ),
                          CustomText(
                            label: "Songs",
                            fontSize: 12,
                            color: greyColor,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CustomText(
                            label: "887",
                            fontSize: 12,
                          ),
                          CustomText(
                            label: "Songs",
                            fontSize: 12,
                            color: greyColor,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CustomText(
                            label: "887",
                            fontSize: 12,
                          ),
                          CustomText(
                            label: "Songs",
                            fontSize: 12,
                            color: greyColor,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )),
          ListTile(
            leading: Image.asset(IconUrls.paintIconURL),
            title: const Text('Themes'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(IconUrls.scissorsIconURL),
            title: const Text('Ringtone Cutter'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(IconUrls.stopwatchIconURL),
            title: const Text('SleepTimer'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(IconUrls.carIconURL),
            title: const Text('Driver Mode'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(IconUrls.folderIconURL),
            title: const Text('Hidden Folders'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(IconUrls.soundBarIconURL),
            title: const Text('Equaliser'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
