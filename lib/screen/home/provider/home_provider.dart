import 'package:flutter/cupertino.dart';

import '../model/home_model.dart';

class HomeProvider with ChangeNotifier
{
      List<HomeModel>musicList=[
        HomeModel(name: "",music: "",title: "")
      ];
}