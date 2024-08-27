import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/box_widget.dart';
import 'package:music_player/resources/components/widgets/pop_menu_button_widget.dart';
import 'package:music_player/views/artistDetailsScreen/artist_details_screen.dart';

class ArtistScreen extends StatelessWidget {
  const ArtistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 15),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.to(const ArtistDetailsScreen());
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: BoxWidget(
                      image: ImageUrls.bannerURL,
                      width: 79,
                      height: 79,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              label: "Michael Jacksjon",
                              fontSize: 18,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                CustomText(
                                  label: "4 Albums",
                                  fontSize: 12,
                                  color: greyColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomText(
                                  label: "45 Songs",
                                  fontSize: 12,
                                  color: greyColor,
                                )
                              ],
                            )
                          ],
                        ),
                        PopMenuButtonWidget()
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    ));
  }
}
