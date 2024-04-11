import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/snak_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SigupScreenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  TextEditingController userNameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController phoneNoCtrl = TextEditingController();

  hexStringToColor(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  Future<void> signUpNow() async {
    setBusy(true);
    String name = userNameCtrl.text.trim();
    String phoneNo = phoneNoCtrl.text.trim();
    String email = emailCtrl.text.trim();
    String password = passwordCtrl.text.trim();
    if (email.isNotEmpty &&
        password.isNotEmpty &&
        name.isNotEmpty &&
        phoneNo.isNotEmpty) {
      var res = await _authService.signUp(AuthModel(
          email: email,
          password: password,
          userName: name,
          phoneNo: phoneNo,
          isPetrolPump: false,
          isMechanic: false,
          joinDate: DateTime.now()));
      if (res == "SignUp Successfully") {
        replaceWithLandingScreenView();
      }
    } else {
      showErrorSnack("pleas field all text field");
    }
    setBusy(false);
  }

  replaceWithLandingScreenView() {
    _navigationService.replaceWithLandingScreenView();
  }
}
