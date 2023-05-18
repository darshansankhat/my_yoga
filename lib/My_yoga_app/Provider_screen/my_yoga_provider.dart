import 'package:flutter/cupertino.dart';

class youga_Provider extends ChangeNotifier
{
  bool d=false;

  void select(bool value)
  {
    d=value;

    notifyListeners();
  }

  List imgList=[
    "assets/image/ii1.jpg",
    "assets/image/ii2.jpg",
    "assets/image/ii3.jpg",
    "assets/image/ii1.jpg",
    "assets/image/ii2.jpg",
    "assets/image/ii3.jpg",
  ];

  int dd=0;

  void indicatorChange(int index)
  {
    dd=index;
    notifyListeners();
  }

}