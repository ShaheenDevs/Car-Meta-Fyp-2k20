import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SigupScreenViewModel extends BaseViewModel {
    TextEditingController userNameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
    TextEditingController emailCtrl = TextEditingController();
  TextEditingController phoneNoCtrl = TextEditingController();

  hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  return Color(int.parse(hexColor, radix: 16));
}
}
