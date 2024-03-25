import 'package:car_meta/ui/views/nav_bar_a/nav_bar_a_view.dart';
import 'package:car_meta/ui/views/nav_bar_b/nav_bar_b_view.dart';
import 'package:car_meta/ui/views/nav_bar_c/nav_bar_c_view.dart';
import 'package:car_meta/ui/views/nav_bar_d/nav_bar_d_view.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LandingScreenViewModel extends BaseViewModel {
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();
  int page = 0;
  List<Widget> tabsList = <Widget>[
    const NavBarAView(),
    const NavBarBView(),
    const NavBarCView(),
    const NavBarDView(),
  ];
  setTab(i) {
    page = i;
    notifyListeners();
  }
}
