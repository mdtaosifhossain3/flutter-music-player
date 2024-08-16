import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/icon_urls.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/views/albumDetailsScreen/album_details_screen.dart';
import 'package:popover/popover.dart';

class GridWidget extends StatelessWidget {
  final Widget? child;
  const GridWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(AlbumDetailsScreen());
      },
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 14,
            childAspectRatio: 0.75),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Flexible(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    ImageUrls.playListBannerURL,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Column(
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
                          width: 15,
                        ),
                        CustomText(
                          label: "20 Songs",
                          fontSize: 11,
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: PopupMenuButton(
                      icon: const Icon(Icons.more_vert),
                      padding: EdgeInsets.zero,
                      itemBuilder: (context) {
                        return [
                          const PopupMenuItem(
                              height: 25,
                              child: CustomText(
                                label: "Play",
                                fontSize: 13,
                              )),
                          const PopupMenuItem(
                              height: 25,
                              child: CustomText(
                                label: "Play next",
                                fontSize: 13,
                              )),
                          const PopupMenuItem(
                              height: 25,
                              child: CustomText(
                                label: "Add to playing queue",
                                fontSize: 13,
                              )),
                          const PopupMenuItem(
                              height: 25,
                              child: CustomText(
                                label: "Add to playlist",
                                fontSize: 13,
                              )),
                          const PopupMenuItem(
                              height: 25,
                              child: CustomText(
                                label: "Rename",
                                fontSize: 13,
                              )),
                          const PopupMenuItem(
                              height: 25,
                              child: CustomText(
                                label: "Tag editor",
                                fontSize: 13,
                              )),
                          const PopupMenuItem(
                              height: 25,
                              child: CustomText(
                                label: "Go to artist",
                                fontSize: 13,
                              )),
                          const PopupMenuItem(
                              height: 25,
                              child: CustomText(
                                label: "Delete from device",
                                fontSize: 13,
                              )),
                          const PopupMenuItem(
                              height: 25,
                              child: CustomText(
                                label: "share",
                                fontSize: 13,
                              )),
                        ];
                      }),
                )
              ])
            ],
          );
        },
      ),
    );
  }
}
