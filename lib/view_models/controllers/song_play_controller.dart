import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongPlayController extends GetxController {
  final player = AudioPlayer();
  final audioQuery = OnAudioQuery();

  RxBool isPlaying = false.obs;
  RxString currentTime = "".obs;
  RxString totalTime = "".obs;
  RxDouble sliderValue = 0.00.obs;
  RxDouble sliderMaxValue = 0.00.obs;
  RxString songTitle = ''.obs;
  RxString artistName = ''.obs;
  RxBool isLoop = false.obs;
  RxBool isShuffle = false.obs;

  //Using this songlist i can grab all the songs from my device
  RxList<SongModel> songList = <SongModel>[].obs;
  RxBool isLocal = true.obs;
  RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    storagePermission();
    requestManageExternalStoragePermission();
    super.onInit();
  }

  void getLocalSongs() async {
    songList.value = await audioQuery.querySongs(
        ignoreCase: true,
        orderType: OrderType.ASC_OR_SMALLER,
        sortType: null,
        uriType: UriType.EXTERNAL);
  }

  void storagePermission() async {
    try {
      var perm = await Permission.storage.request();
      if (perm.isGranted) {
        if (kDebugMode) {
          print("Permission is granted");
        }
        getLocalSongs();
      } else {
        if (kDebugMode) {
          print("Permission is denied");
        }
        await Permission.storage.request();
        await Permission.manageExternalStorage.request();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> requestManageExternalStoragePermission() async {
    var perm = await Permission.manageExternalStorage.isGranted;
    if (perm) {
      if (kDebugMode) {
        print("Manage External Storage Permission granted");
      }
      getLocalSongs(); // Call your function to get local songs here.
    } else {
      if (kDebugMode) {
        print("Manage External Storage Permission denied");
      }
      await Permission.manageExternalStorage.request();
    }
  }

  void playLocalAudio(String url, title, artist) async {
    try {
      songTitle.value = title;
      artistName.value = artist;
      await player.setAudioSource(AudioSource.uri(Uri.parse(url)));
      updatePosition();
      isPlaying.value = true;

      await player.play();
    } catch (e) {
      if (kDebugMode) {
        print("Error playing audio: $e");
      }
    }
  }

  fintTheCurrentIndex(int songId) {
    var index = 0;
    for (var elm in songList) {
      if (elm.id == songId) {
        currentIndex.value = index;
      }

      index++;
    }
  }

  void playNextSong() {
    var songLength = songList.length;
    currentIndex.value = currentIndex.value + 1;
    if (currentIndex.value < songLength) {
      var nextSong = songList[currentIndex.value];
      playLocalAudio(nextSong.data, nextSong.title, nextSong.artist);
    } else {
      currentIndex.value = 0;
      playLocalAudio(songList[0].data, songList[0].title, songList[0].artist);
    }
  }

  void playPrevSong() {
    var songLength = songList.length;
    if (currentIndex.value != 0) {
      currentIndex.value = --currentIndex.value;

      if (currentIndex.value < songLength) {
        var nextSong = songList[currentIndex.value];
        playLocalAudio(nextSong.data, nextSong.title, nextSong.title);
      }
    } else {
      currentIndex.value = songLength;
      playLocalAudio(
          songList.last.data, songList.last.title, songList.last.artist);
    }
  }

  void setLoop() async {
    if (isLoop.value) {
      await player.setLoopMode(LoopMode.off);
    } else {
      await player.setLoopMode(LoopMode.one);
    }

    isLoop.value = !isLoop.value;
  }

  void setShuffle() async {
    if (isShuffle.value) {
      await player.setShuffleModeEnabled(false);
    } else {
      await player.setShuffleModeEnabled(true);
    }

    isShuffle.value = !isShuffle.value;
  }

  void resumePlaying() async {
    isPlaying.value = true;
    await player.play();
  }

  void pausePlaying() async {
    isPlaying.value = false;
    await player.pause();
  }

  void changeSlider(Duration position) async {
    await player.seek(position);
  }

  void updatePosition() async {
    try {
      player.durationStream.listen((d) {
        String timeWithoutMilliseconds = d.toString().split('.').first;
        List<String> timeParts = timeWithoutMilliseconds.split(':');

        String minutes = timeParts[1];
        String seconds = timeParts[2];

        totalTime.value = "$minutes:$seconds";
        sliderMaxValue.value = d!.inSeconds.toDouble();
      });

      player.positionStream.listen((d) {
        String timeWithoutMilliseconds = d.toString().split('.').first;
        List<String> timeParts = timeWithoutMilliseconds.split(':');

        String minutes = timeParts[1];
        String seconds = timeParts[2];

        currentTime.value = "$minutes:$seconds";
        sliderValue.value = d.inSeconds.toDouble();
      });
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
