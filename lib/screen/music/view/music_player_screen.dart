import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  @override
  Widget build(BuildContext context) {
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
            const SizedBox(height: 100,),
            Image.asset(
              "assets/image/img1.jpeg",
              height: 380,
              width: 380,
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment(-0.72, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Har Funn Maula(From Koi Jaane Na)",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Tanishk Bagchi, Vishal Dadlani",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.94,
              child: Slider(
                value: 5,
                onChanged: (value) {},
                min: 1,
                max: 10,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("0:37"),
                  Text("4:07"),
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
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle,
                      size: 60,
                    )),
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
