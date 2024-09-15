import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/appbar_widget.dart';
import 'package:music_player/resources/components/widgets/song_list_widget.dart';

class PlayListSongPlayScreens extends StatelessWidget {
  const PlayListSongPlayScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(
          label: "PlayList", actionIcon: const Icon(Icons.more_vert)),
      body: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {},
                      child: const Icon(Icons.arrow_back_ios_new_outlined)),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 166,
                    height: 166,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      image: DecorationImage(
                          image: AssetImage(ImageUrls.bannerURL),
                          fit: BoxFit.cover),
                      color: midblackColor,
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Icon(Icons.arrow_forward_ios_outlined))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(label: "Woh Lam HE"),
              const SizedBox(
                height: 5,
              ),
              const CustomText(
                label: "Atif Aslam",
                fontSize: 14,
                color: midWhiteColor,
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return SongListWidget(
                    songName: "Mujhe Pene do",
                    artistName: "Dharsan Rawal",
                  );
                }),
          )
        ],
      ),
    );
  }
}
