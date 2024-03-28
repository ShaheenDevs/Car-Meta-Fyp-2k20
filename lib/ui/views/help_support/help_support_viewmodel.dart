import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HelpSupportViewModel extends BaseViewModel {
  hexStringToColor(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return Color(int.parse(hexColor, radix: 16));
  }
  TextEditingController nameCtrl = TextEditingController();

  TextEditingController emailCtrl = TextEditingController();

  TextEditingController messageCtrl = TextEditingController();
}
