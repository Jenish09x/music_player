import 'package:flutter/material.dart';
import 'music_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Music Player"),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.music_note_outlined),
                  text: "Music",
                ),
                Tab(
                  icon: Icon(Icons.video_collection_outlined),
                  text: "Video",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              MusicScreen(),
              MusicScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
