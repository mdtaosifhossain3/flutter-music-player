import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/grid_widget.dart';

class GenreScreen extends StatelessWidget {
  const GenreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 1,
                childAspectRatio: 0.95),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                height: 118,
                width: 162,
                margin: EdgeInsets.only(bottom: 12, right: 12),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageUrls.bannerURL),
                        fit: BoxFit.cover)),
                child: const Center(
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
              );
            }),
      ),
    );
  }
}
