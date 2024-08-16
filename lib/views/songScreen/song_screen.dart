import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/appUrls/icon_urls.dart';
import 'package:music_player/resources/appUrls/image_urls.dart';
import 'package:music_player/resources/components/customWidgets/custom_text.dart';
import 'package:music_player/resources/components/widgets/grid_widget.dart';
import 'package:music_player/resources/components/widgets/play_list_widget.dart';
import 'package:music_player/resources/components/widgets/song_list_widget.dart';
import 'package:music_player/resources/components/widgets/title_widget.dart';
import 'package:music_player/views/artistScreen/artist_screen.dart';
import 'package:music_player/views/genreScreen/genre_screen.dart';

class SongScreen extends StatefulWidget {
  SongScreen({super.key});

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> with TickerProviderStateMixin {
  TabController? controller;
  int setTabIndex = 0;
  @override
  void initState() {
    controller = TabController(length: 5, vsync: this);
    controller!.addListener(() {
      setTabIndex = controller!.index ?? 0;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            height: 42,
            child: TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                controller: controller,
                dividerColor: Colors.transparent,
                indicatorColor: pinkColor,
                labelColor: pinkColor,
                unselectedLabelStyle: const TextStyle(color: midWhiteColor),
                tabs: [
                  const Tab(
                    text: "All Songs",
                  ),
                  const Tab(
                    text: "Playlist",
                  ),
                  const Tab(
                    text: "Albums",
                  ),
                  const Tab(
                    text: "Artist",
                  ),
                  const Tab(
                    text: "Genre",
                  ),
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: TabBarView(controller: controller, children: [
              const SongListWidget(
                songName: "Dil deya gallan",
                artistName: "Atif Aslam",
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 1.4),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              border: Border.all(color: deepBlackColor),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage(ImageUrls.playListBannerURL))),
                          child: ListTile(
                            title: const CustomText(
                              label: "History",
                              fontSize: 14,
                            ),
                            subtitle: const CustomText(
                              label: "100 Songs",
                              fontSize: 11,
                              color: greyColor,
                            ),
                            trailing:
                                Image.asset(IconUrls.palyListButtonIconURL),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const TitleWidget(
                        righText: "My Playlist",
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const PlayListWidget(
                        coverImageheight: 60,
                        coverImagewidth: 90,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GridWidget(),
              ),
              const ArtistScreen(),
              const GenreScreen(),
            ]),
          )
        ],
      ),
    );
  }
}
