import 'package:flutter/cupertino.dart';

import '../model/home_model.dart';

class HomeProvider with ChangeNotifier
{
      List<HomeModel>musicList=[
        HomeModel(name: "Har Funn Maula(From 'Koi Jaane Na')",music: "",image: "assets/image/img1.jpeg"),
        HomeModel(name: "Haryana Hood",music: "",image: "assets/image/img1.jpeg"),
        HomeModel(name: "Harleys In Hawaii",music: "",image: "assets/image/img1.jpeg"),
        HomeModel(name: "Kalaastar(From 'Honey 3.0')",music: "",image: "assets/image/img1.jpeg"),
        HomeModel(name: "Brown Rang",music: "",image: "assets/image/img1.jpeg"),
      ];
}