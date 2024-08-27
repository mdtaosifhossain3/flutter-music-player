import 'package:flutter/material.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/box_widget.dart';
import 'package:music_player/resources/components/widgets/grid_widget.dart';

class GenreScreen extends StatelessWidget {
  const GenreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridWidget(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            childAspectRatio: 1.2,
            itemCount: 10,
            child: Stack(alignment: Alignment.center, children: [
              BoxWidget(
                image: ImageUrls.bannerURL,
                height: 118,
                width: 162,
                fit: BoxFit.fill,
              ),
              const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      label: "Classical",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      label: "456 Songs",
                      fontSize: 10,
                    )
                  ],
                ),
              ),
            ])),
      ),
    );
  }
}
