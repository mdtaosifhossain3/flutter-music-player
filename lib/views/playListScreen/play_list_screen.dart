import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/icon_urls.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/grid_widget.dart';
import 'package:music_player/resources/components/widgets/play_list_widget.dart';
import 'package:music_player/resources/components/widgets/title_widget.dart';

class PlayListScreen extends StatelessWidget {
  const PlayListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridWidget(
              itemCount: 4,
              child: Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                    border: Border.all(color: deepBlackColor),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(ImageUrls.playListBannerURL))),
                child: ListTile(
                  title: const CustomText(
                    label: "Top Popular Songs",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: const CustomText(
                    label: "100 Songs",
                    fontSize: 11,
                    color: midWhiteColor,
                  ),
                  trailing: Image.asset(
                    IconUrls.palyListButtonIconURL,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TitleWidget(
                leftText: "My Playlist",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: PlayListWidget(
                coverImageheight: 60,
                coverImagewidth: 90,
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: pinkColor,
        foregroundColor: midWhiteColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
