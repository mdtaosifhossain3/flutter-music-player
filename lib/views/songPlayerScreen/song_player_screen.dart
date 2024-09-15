import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/appbar_widget.dart';
import 'package:music_player/resources/components/widgets/box_widget.dart';
import 'package:music_player/view_models/controllers/song_play_controller.dart';

class SongPlayerScreen extends StatefulWidget {
  const SongPlayerScreen({super.key});

  @override
  State<SongPlayerScreen> createState() => _SongPlayerScreenState();
}

class _SongPlayerScreenState extends State<SongPlayerScreen> {
  var value = 30.0;
  final SongPlayController _songPlayController = Get.put(SongPlayController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(label: "Music"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Container(
                  width: 216,
                  height: 216,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(ImageUrls.bannerURL),
                        fit: BoxFit.fill),
                    color: midblackColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomText(
                    label: _songPlayController.songTitle.value.toString()),
                const SizedBox(
                  height: 5,
                ),
                CustomText(
                  label: _songPlayController.artistName.value.toString(),
                  fontSize: 14,
                  color: midWhiteColor,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Obx(() {
                return Slider(
                  inactiveColor: midWhiteColor,
                  value: _songPlayController.sliderValue.value,
                  onChanged: (value) {
                    _songPlayController.sliderValue.value = value;

                    final position = Duration(seconds: value.toInt());

                    _songPlayController.changeSlider(position);
                  },
                  min: 0,
                  max: _songPlayController.sliderMaxValue.value,
                );
              }),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_songPlayController.currentTime.value.toString()),
                      Text(_songPlayController.totalTime.value.toString())
                    ],
                  );
                }),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        _songPlayController.playPrevSong();
                      },
                      child: const Icon(Icons.arrow_back_ios_new_outlined)),
                  const SizedBox(
                    width: 40,
                  ),
                  Obx(
                    () => _songPlayController.isPlaying.value
                        ? GestureDetector(
                            onTap: () {
                              _songPlayController.pausePlaying();
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                  color: pinkColor, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.pause,
                                size: 45,
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              _songPlayController.resumePlaying();
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                  color: pinkColor, shape: BoxShape.circle),
                              child: const Icon(
                                Icons.play_arrow,
                                size: 45,
                              ),
                            ),
                          ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  InkWell(
                      onTap: () {
                        _songPlayController.playNextSong();
                      },
                      child: const Icon(Icons.arrow_forward_ios_outlined))
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.shuffle_outlined,
                    size: 20,
                  )),
              InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.repeat,
                    size: 20,
                  )),
              const Icon(
                Icons.library_music_outlined,
                size: 20,
              ),
              const Icon(
                Icons.favorite_border_outlined,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
