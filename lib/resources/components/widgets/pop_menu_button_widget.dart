import 'package:flutter/material.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';

class PopMenuButtonWidget extends StatelessWidget {
  const PopMenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: const Icon(Icons.more_vert),
        padding: const EdgeInsets.only(left: 7),
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
        });
  }
}
