import 'package:car_meta/ui/views/chat/chat_view.dart';
import 'package:car_meta/ui/views/home/home_view.dart';
import 'package:car_meta/ui/views/setting/setting_view.dart';
import 'package:car_meta/ui/views/star/star_view.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LandingScreenViewModel extends BaseViewModel {
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  int page = 0;
  List<Widget> tabsList = <Widget>[
    const HomeView(),
    const ChatView(),
    const HomeView(),
    const StarView(),
    const SettingView(),
  ];
  setTab(i) {
    page = i;
    notifyListeners();
  }
}
