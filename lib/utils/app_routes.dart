import 'package:flutter/cupertino.dart';
import 'package:music_player/screen/music/view/music_player_screen.dart';

import '../screen/home/view/home_screen.dart';

// ignore: non_constant_identifier_names
Map<String,WidgetBuilder>app_routes={
  '/':(context) => const HomeScreen(),
  'MusicPlayer':(context) => const MusicPlayerScreen(),
};