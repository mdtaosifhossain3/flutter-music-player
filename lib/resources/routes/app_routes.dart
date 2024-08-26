import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:music_player/resources/routes/routes_name.dart';
import 'package:music_player/views/homeScreen/home_screen.dart';
import 'package:music_player/views/songScreen/song_screen.dart';
import 'package:music_player/views/splashScreen/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: RoutesName.homeScreen,
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: RoutesName.songScreen,
          page: () => const SongScreen(),
        ),
      ];
}
