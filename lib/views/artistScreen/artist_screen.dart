import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
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
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: 79,
                    height: 79,
                    decoration: BoxDecoration(
                        border: Border.all(color: midWhiteColor, width: 2)),
                    child: Image.asset(
                      ImageUrls.bannerURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
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
                        PopupMenuButton(
                            icon: const Icon(Icons.more_vert),
                            padding: EdgeInsets.zero,
                            itemBuilder: (context) {
                              return [
                                const PopupMenuItem(
                                    height: 28,
                                    child: CustomText(
                                      label: "Play",
                                      fontSize: 13,
                                    )),
                                const PopupMenuItem(
                                    height: 28,
                                    child: CustomText(
                                      label: "Play next",
                                      fontSize: 13,
                                    )),
                                const PopupMenuItem(
                                    height: 28,
                                    child: CustomText(
                                      label: "Add to playing queue",
                                      fontSize: 13,
                                    )),
                                const PopupMenuItem(
                                    height: 28,
                                    child: CustomText(
                                      label: "Add to playlist",
                                      fontSize: 13,
                                    )),
                                const PopupMenuItem(
                                    height: 28,
                                    child: CustomText(
                                      label: "Rename",
                                      fontSize: 13,
                                    )),
                                const PopupMenuItem(
                                    height: 28,
                                    child: CustomText(
                                      label: "Tag editor",
                                      fontSize: 13,
                                    )),
                                const PopupMenuItem(
                                    height: 28,
                                    child: CustomText(
                                      label: "Go to artist",
                                      fontSize: 13,
                                    )),
                                const PopupMenuItem(
                                    height: 28,
                                    child: CustomText(
                                      label: "Delete from device",
                                      fontSize: 13,
                                    )),
                                const PopupMenuItem(
                                    height: 28,
                                    child: CustomText(
                                      label: "share",
                                      fontSize: 13,
                                    )),
                              ];
                            }),
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
