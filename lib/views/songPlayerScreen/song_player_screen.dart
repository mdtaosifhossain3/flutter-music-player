import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/widgets/appbar_widget.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 237,
              height: 237,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                image: DecorationImage(
                    image: AssetImage(ImageUrls.bannerURL), fit: BoxFit.cover),
                color: midblackColor,
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            const Row(
              children: [
                Icon(Icons.play_arrow_outlined),
                Text(
                  "123 Plays",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          " songPlayController.songTitle.value",
                          maxLines: 1,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Icon(Icons.download_outlined, size: 25)
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("songPlayController.artistName.value",
                      style: const TextStyle(fontSize: 12))
                ],
              ),
            ),
            //   Spacer(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(""),
                    Flexible(
                        child: Slider(
                      value: 0,
                      onChanged: (value) {},
                      min: 0,
                      max: 100,
                    )),
                    Text("")
                  ],
                ),
                // const SizedBox(
                //   height: 20,
                // ),
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
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.shuffle_rounded,
                          color: Colors.white,
                        )),
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.repeat_on_rounded,
                          color: Colors.white,
                        )),
                    const Icon(Icons.library_music),
                    const Icon(Icons.favorite_rounded),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
