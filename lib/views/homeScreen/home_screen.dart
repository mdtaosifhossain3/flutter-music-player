import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/box_widget.dart';
import 'package:music_player/resources/components/widgets/song_list_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      label: "Hot Recommended",
                      fontSize: 15,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 170,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: BoxWidget(
                                  image: ImageUrls.bannerURL,
                                  height: 125,
                                  width: 229,
                                ),
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    label: "Woh Lam He",
                                    fontSize: 13,
                                  ),
                                  CustomText(
                                    label: "Atif Aslam",
                                    fontSize: 10,
                                    color: greyColor,
                                  )
                                ],
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    const Divider(
                      color: greyColor,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          label: "PlayList",
                          color: midWhiteColor,
                        ),
                        CustomText(
                          label: "view All",
                          color: coralColor,
                          fontSize: 14,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: BoxWidget(
                                  image: ImageUrls.bannerURL,
                                  height: 80,
                                  width: 108,
                                ),
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    label: "Woh Lam He",
                                    fontSize: 13,
                                  ),
                                  CustomText(
                                    label: "Atif Aslam",
                                    fontSize: 10,
                                    color: greyColor,
                                  )
                                ],
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          label: "Cloud Song",
                          color: midWhiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          label: "Device Song",
                          color: coralColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SongListWidget(
                songName: "Dil deya gallan",
                artistName: "Atif Aslam",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
