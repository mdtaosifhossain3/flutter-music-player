import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_button.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/appbar_widget.dart';
import 'package:music_player/resources/components/widgets/song_list_widget.dart';

class AlbumDetailsScreen extends StatelessWidget {
  const AlbumDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: appbarWidget(label: "Album Details"),
      body: Column(
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
                            colorFilter: const ColorFilter.linearToSrgbGamma(),
                            image: AssetImage(ImageUrls.bannerURL),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 87,
                          height: 87,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: midWhiteColor),
                            image: DecorationImage(
                                image: AssetImage(ImageUrls.bannerURL),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              label: "History",
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              label: "by Michael Jackson",
                              fontSize: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomText(label: "1992", fontSize: 12),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomText(label: "18 Songs", fontSize: 12),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomText(label: "64 Min", fontSize: 12),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          btnName: "Play",
                          bgColor: pinkColor,
                          icon: Icons.play_arrow,
                        ),
                        CustomButton(
                          btnName: "Share",
                          borderColor: midWhiteColor,
                          icon: Icons.share,
                        ),
                        CustomButton(
                          btnName: "Add to Favourite",
                          borderColor: midWhiteColor,
                          icon: Icons.favorite,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SongListWidget(
              songName: "Shape of you",
              artistName: "Ed Sheran",
            ),
          )
        ],
      ),
    );
  }
}
