import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_button.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/appbar_widget.dart';
import 'package:music_player/resources/components/widgets/play_list_widget.dart';
import 'package:music_player/resources/components/widgets/song_list_widget.dart';
import 'package:music_player/resources/components/widgets/title_widget.dart';

class ArtistDetailsScreen extends StatelessWidget {
  const ArtistDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbarWidget(label: "Artist Details"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(alignment: Alignment.center, children: [
                ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      width: size.width * .94,
                      height: size.height * .27,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          border: Border.all(color: midWhiteColor),
                          color: midblackColor,
                          image: DecorationImage(
                              colorFilter:
                                  const ColorFilter.linearToSrgbGamma(),
                              image: AssetImage(ImageUrls.bannerURL),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              CustomText(
                                label: "Dilton Razz",
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CustomText(
                                label: "Rock, Heavy Metal, Dj",
                                fontSize: 14,
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            label: "54545",
                            fontSize: 14,
                          ),
                          CustomText(
                            label: "Followers",
                            fontSize: 10,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Column(
                        children: [
                          CustomText(
                            label: "54545",
                            fontSize: 14,
                          ),
                          CustomText(
                            label: "Listners",
                            fontSize: 10,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      CustomButton(
                        btnName: "Follow",
                        bgColor: pinkColor,
                        fontSize: 12,
                        horizontalPadding: 35,
                      )
                    ],
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TitleWidget(
                    righText: "Albums",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PlayListWidget(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TitleWidget(
                righText: "Top Songs",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SongListWidget(
              songName: "Shape of you",
              artistName: "Ed Sheran",
            )
          ],
        ),
      ),
    );
  }
}
