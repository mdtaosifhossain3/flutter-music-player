import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/icon_urls.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/customWidgets/custom_textField.dart';
import 'package:music_player/views/homeScreen/home_screen.dart';
import 'package:music_player/views/songScreen/song_screen.dart';
import 'package:music_player/views/splashScreen/splash_screen.dart';

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key});

  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  int currentIdx = 0;

  List<Widget> myScreens = [
    const HomeScreen(),
    SongScreen(),
    const SplashScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
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
        ),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            size: 30,
          ),
          centerTitle: true,
          title: currentIdx == 0
              ? const Row(
                  children: [
                    Expanded(
                      child: CustomTextfield(
                        labelName: "Search Songs",
                      ),
                    )
                  ],
                )
              : currentIdx == 1
                  ? const CustomText(
                      label: "Songs",
                      fontSize: 17,
                      color: midWhiteColor,
                    )
                  : const CustomText(
                      label: "Settings",
                      fontSize: 17,
                      color: midWhiteColor,
                    ),
          actions: currentIdx != 0 ? [const Icon(Icons.search)] : null,
        ),
        backgroundColor: bottomBarColor,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(color: midblackColor, boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 66, 49, 59),
              blurRadius: 10,
              offset: Offset(0, -3),
            )
          ]),
          child: BottomNavigationBar(
            currentIndex: currentIdx,
            onTap: (val) {
              setState(() {
                currentIdx = val;
              });
            },
            selectedItemColor: pinkColor,
            unselectedItemColor: greyColor,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(IconUrls.homeIconURL), label: "Home"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    IconUrls.musicIconURL,
                    color: currentIdx == 1 ? pinkColor : greyColor,
                  ),
                  label: "Songs"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    IconUrls.gearIconURL,
                    color: currentIdx == 2 ? pinkColor : greyColor,
                  ),
                  label: "Settings"),
            ],
          ),
        ),
        body: myScreens[currentIdx],
      ),
    );
  }
}
