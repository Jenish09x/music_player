import 'package:flutter/cupertino.dart';

import '../../home/model/home_model.dart';

class MusicPlayerProvider with ChangeNotifier {
  List<HomeModel> musicList = [
    HomeModel(
        name: "Har Funn Maula(From 'Koi Jaane Na')",
        music: "assets/music/Har Funn Maula.m4a",
        image: "assets/image/img1.jpeg"),
    HomeModel(
        name: "Haryana Hood",
        music: "assets/music/Haryana Hood.m4a",
        image: "assets/image/Haryana Hood.jpg"),
    HomeModel(
        name: "Harleys In Hawaii",
        music: "assets/music/Harleys In Hawaii.m4a",
        image: "assets/image/Harley_Hawaii.jpg"),
    HomeModel(
        name: "Kalaastar(From 'Honey 3.0')",
        music: "assets/music/Desi Kalakaar.m4a",
        image: "assets/image/Desi_Kalakaar.jpg"),
    HomeModel(
        name: "Brown Rang",
        music: "assets/music/Brown Rang.m4a",
        image: "assets/image/Brown_Rang.jpg"),
  ];
  bool isPlay = false;
  Duration totalDuration = const Duration(seconds: 0);
  int index = 0;

  void checkStatus(bool status) {
    isPlay = status;
    notifyListeners();
  }

  void changIndex(int i) {
    index = i;
    notifyListeners();
  }

  void changTotalDuration(Duration d1) {
    totalDuration = d1;
    notifyListeners();
  }
}
