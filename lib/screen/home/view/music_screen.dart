import 'package:flutter/material.dart';
import 'package:music_player/screen/music/provider/music_player_provider.dart';
import 'package:provider/provider.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  MusicPlayerProvider? providerR;
  MusicPlayerProvider? providerW;

  @override
  Widget build(BuildContext context) {
    providerR = context.read<MusicPlayerProvider>();
    providerW = context.watch<MusicPlayerProvider>();
    return ListView.builder(
      itemCount: providerR!.musicList.length,
      itemBuilder: (context, index) => ListTile(
        leading: Image.asset(
          "${providerR!.musicList[index].image}",
          height: 50,
        ),
        title: Text("${providerR!.musicList[index].name}"),
        trailing: IconButton(
          onPressed: () {
            context.read<MusicPlayerProvider>().changIndex(index);
            Navigator.pushNamed(context, "MusicPlayer");
          },
          icon: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
