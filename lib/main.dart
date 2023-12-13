import 'package:flutter/material.dart';
import 'package:music_player/screen/music/provider/music_player_provider.dart';
import 'package:music_player/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>MusicPlayerProvider()),
      // 9427342306
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        routes: app_routes,
      ),
    ),
  );
}