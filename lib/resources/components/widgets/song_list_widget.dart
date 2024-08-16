import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/icon_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/views/songPlayerScreen/song_player_screen.dart';

class SongListWidget extends StatelessWidget {
  final String? songName;
  final String? artistName;
  final leadingIcon;
  final String? trailingIcon;
  const SongListWidget(
      {super.key,
      this.artistName = '',
      this.leadingIcon,
      this.songName = '',
      this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        itemCount: 10,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: InkWell(
                onTap: () {
                  Get.to(SongPlayerScreen());
                },
                borderRadius: BorderRadius.circular(3),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: midWhiteColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        label: songName!,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: midWhiteColor,
                                      ),
                                      CustomText(
                                        label: artistName!,
                                        fontSize: 10,
                                        color: greyColor,
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                      trailingIcon ?? IconUrls.listTileIconURL)
                                ],
                              ),
                              const Divider(
                                color: greyColor,
                                thickness: 0.3,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ));
        });
  }
}
