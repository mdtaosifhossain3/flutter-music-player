import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/box_widget.dart';

class PlayListWidget extends StatelessWidget {
  final double? coverImageheight;
  final double? coverImagewidth;
  const PlayListWidget(
      {super.key, this.coverImageheight, this.coverImagewidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: BoxWidget(
                    image: ImageUrls.h,
                    height: coverImageheight ?? 108,
                    width: coverImagewidth ?? 110,
                    fit: BoxFit.fill,
                  )),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    label: "Woh Lam He",
                    fontSize: 13,
                    color: midWhiteColor,
                  ),
                  CustomText(
                    label: "Atif Aslam",
                    fontSize: 10,
                    color: greyColor,
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
