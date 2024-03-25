import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LandingScreenViewModel extends BaseViewModel {
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  int page = 0;
   List<Widget> tabsList = <Widget>[
    // const DashboardView(),
    // const ChatView(),
    // const ProfileView(),
    // const NotificationView()
  ];
  setTab(i) {
    page = i;
    notifyListeners();
  }
}
