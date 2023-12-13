import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:music_player/screen/music/provider/music_player_provider.dart';
import 'package:provider/provider.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  AssetsAudioPlayer player = AssetsAudioPlayer();
  MusicPlayerProvider? providerR;
  MusicPlayerProvider? providerW;

  @override
  void initState() {
    super.initState();
    player.open(
        Audio(
            "${context.read<MusicPlayerProvider>().musicList[context.read<MusicPlayerProvider>().index].music}"),
        autoStart: false,
        showNotification: true);

    player.current.listen((event) {
      Duration d1 = event!.audio.duration;
      context.read<MusicPlayerProvider>().changTotalDuration(d1);
    });
  }

  @override
  Widget build(BuildContext context) {
    providerR = context.read<MusicPlayerProvider>();
    providerW = context.watch<MusicPlayerProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Column(
            children: [
              Text(
                "PLAYING FROM YOUR LIBRARY",
                style: TextStyle(fontSize: 11, letterSpacing: 2),
              ),
              Text(
                "Liked Songs",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ],
          ),
          centerTitle: true,
          actions: const [Icon(Icons.more_vert)],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              "${providerW!.musicList[providerW!.index].image}",
              height: 380,
              width: 380,
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: const Alignment(-0.72, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${providerW!.musicList[providerW!.index].name}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Tanishk Bagchi, Vishal Dadlani",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            PlayerBuilder.currentPosition(
              player: player,
              builder: (context, position) => Column(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.94,
                    child: Slider(
                      value: position.inSeconds.toDouble(),
                      onChanged: (value) {
                        player.seek(Duration(seconds: value.toInt()));
                      },
                      min: 0,
                      max: providerR!.totalDuration.inSeconds.toDouble(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("$position"),
                        Text("${providerW!.totalDuration}"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shuffle,
                      size: 20,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_previous,
                      size: 40,
                    )),
                IconButton(
                  onPressed: () {
                    if (providerR!.isPlay == false) {
                      player.play();
                      providerR!.checkStatus(true);
                    } else {
                      player.pause();
                      providerR!.checkStatus(false);
                    }
                  },
                  icon: Icon(
                    providerW!.isPlay ? Icons.pause_circle : Icons.play_circle,
                    size: 60,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.skip_next,
                      size: 40,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.repeat,
                      size: 20,
                    )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Icon(Icons.speaker_group),
                  Spacer(),
                  Icon(Icons.share_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.menu_open),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
