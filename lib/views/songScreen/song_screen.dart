import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';
import 'package:music_player/resources/components/widgets/song_list_widget.dart';
import 'package:music_player/views/songScreen/albumsScreen/album_screen.dart';
import 'package:music_player/views/songScreen/artistScreen/artist_screen.dart';
import 'package:music_player/views/songScreen/genreScreen/genre_screen.dart';
import 'package:music_player/views/songScreen/playListScreen/play_list_screen.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({super.key});

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
      setTabIndex = controller!.index;
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
                tabs: const [
                  Tab(
                    text: "All Songs",
                  ),
                  Tab(
                    text: "Playlist",
                  ),
                  Tab(
                    text: "Albums",
                  ),
                  Tab(
                    text: "Artist",
                  ),
                  Tab(
                    text: "Genre",
                  ),
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: TabBarView(controller: controller, children: const [
              //All Songs
              SongListWidget(
                songName: "Dil deya gallan",
                artistName: "Atif Aslam",
              ),
              //PlayList
              PlayListScreen(),
              //Albums
              AlbumScreen(),
              //Artist
              ArtistScreen(),
              //All Genre
              GenreScreen(),
            ]),
          )
        ],
      ),
    );
  }
}
