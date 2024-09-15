import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/icon_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/view_models/controllers/song_play_controller.dart';
import 'package:music_player/views/songPlayerScreen/song_player_screen.dart';

class SongListWidget extends StatelessWidget {
  final List? songlist;
  final String? songName;
  final String? artistName;
  final leadingIcon;
  final String? trailingIcon;
  final controller;
  final SongPlayController _songPlayController = Get.put(SongPlayController());
  SongListWidget(
      {super.key,
      this.songlist,
      this.artistName = '',
      this.leadingIcon,
      this.songName = '',
      this.controller,
      this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          itemCount: songlist?.length,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) {
            final data = songlist![index];
            final songTitle = _songPlayController.songList[index].title;
            final url = _songPlayController.songList[index].data;
            final artistName = _songPlayController.songList[index].artist;
            return Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: InkWell(
                  onTap: () {
                    // songPlayController.playLocalAudio(
                    //     url, songTitle, artistName);
                    controller.playLocalAudio(url, songTitle, artistName);
                    Get.to(const SongPlayerScreen());
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
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            label: data.title ?? "",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: midWhiteColor,
                                          ),
                                          CustomText(
                                            label: data.artist ?? "",
                                            fontSize: 10,
                                            color: greyColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(trailingIcon ??
                                        IconUrls.listTileIconURL)
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
          }),
    );
  }
}
