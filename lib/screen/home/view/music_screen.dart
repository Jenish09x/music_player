import 'package:flutter/material.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Image.asset(""),
        title: const Text("Music"),
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
