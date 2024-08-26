import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/appbar_widget.dart';

class SongPlayerScreen extends StatefulWidget {
  const SongPlayerScreen({super.key});

  @override
  State<SongPlayerScreen> createState() => _SongPlayerScreenState();
}

class _SongPlayerScreenState extends State<SongPlayerScreen> {
  var value = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(label: "Music"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
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
          Column(
            children: [
              Slider(
                inactiveColor: midWhiteColor,
                value: 0,
                onChanged: (value) {},
                min: 0,
                max: 100,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("0.00"), Text("3.00")],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {},
                      child: const Icon(Icons.arrow_back_ios_new_outlined)),
                  const SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.pause,
                        size: 50,
                      ),
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.shuffle_rounded,
                      color: Colors.white,
                    )),
                InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.repeat_on_rounded,
                      color: Colors.white,
                    )),
                const Icon(Icons.library_music),
                const Icon(Icons.favorite_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
