import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/box_widget.dart';
import 'package:music_player/resources/components/widgets/grid_widget.dart';
import 'package:music_player/resources/components/widgets/pop_menu_button_widget.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridWidget(
          crossAxisSpacing: 14,
          mainAxisSpacing: 11,
          itemCount: 10,
          child: Column(
            children: [
              BoxWidget(
                image: ImageUrls.playListBannerURL,
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          label: "History",
                          fontSize: 13,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              label: "Michael Jackson",
                              fontSize: 11,
                              color: greyColor,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CustomText(
                              label: "20 Songs",
                              fontSize: 11,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(child: PopMenuButtonWidget())
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
