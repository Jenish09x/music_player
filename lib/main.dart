import 'package:flutter/material.dart';
import 'package:music_player/screen/home/provider/home_provider.dart';
import 'package:music_player/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>HomeProvider()),
      // 9427342306
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: app_routes,
      ),
    ),
  );
}