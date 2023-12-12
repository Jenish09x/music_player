import 'package:flutter/material.dart';
import 'package:music_player/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  HomeProvider? providerR;
  HomeProvider? providerW;
  @override
  Widget build(BuildContext context) {
    providerR=context.read<HomeProvider>();
    providerW=context.watch<HomeProvider>();
    return ListView.builder(
      itemCount: providerR!.musicList.length,
      itemBuilder: (context, index) => ListTile(
        leading: Image.asset("${providerR!.musicList[index].image}",height: 50,),
        title: Text("${providerR!.musicList[index].name}"),
        trailing: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "MusicPlayer");
          },
          icon: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
