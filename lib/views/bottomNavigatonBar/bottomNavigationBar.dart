import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/icon_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/customWidgets/custom_textField.dart';
import 'package:music_player/resources/components/widgets/drawer_widget.dart';
import 'package:music_player/views/homeScreen/home_screen.dart';
import 'package:music_player/views/settingsScreen/settings_screen.dart';
import 'package:music_player/views/songScreen/song_screen.dart';

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key});

  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  int currentIdx = 0;

  List<Widget> myScreens = [
    const HomeScreen(),
    const SongScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          leading: Builder(builder: (context) {
            return InkWell(
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image.asset(IconUrls.menuIconURL),
            );
          }),
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
          actions: currentIdx != 0
              ? [
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.search),
                  )
                ]
              : null,
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
