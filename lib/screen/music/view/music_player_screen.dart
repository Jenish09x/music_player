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
              Text("PLAYING FROM YOUR LIBRARY",style: TextStyle(fontSize: 11,letterSpacing: 2),),
              Text("Liked Songs",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,letterSpacing: 1),),
            ],
          ),
          centerTitle: true,
          actions: const [
            Icon(Icons.more_vert)
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image/img1.jpeg",height: 350,width: 350,),
              const SizedBox(height: 20,),
              const Text("Har Funn Maula",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              const SizedBox(height: 5,),
              const Text("Tanishk Bagchi, Vishal Dadlani",style: TextStyle(fontSize: 12),),
              Slider(value: 5, onChanged: (value) {},
              min: 1,
              max: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
