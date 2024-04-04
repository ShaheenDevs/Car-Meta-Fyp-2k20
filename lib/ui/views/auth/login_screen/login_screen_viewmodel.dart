import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/snak_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginScreenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();

  AuthModel? get userData => _authService.userData;

  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  Future<void> loginNow() async {
    setBusy(true);
    String email = emailCtrl.text.trim();
    String password = passwordCtrl.text.trim();
    if (email.isNotEmpty && password.isNotEmpty) {
      var res = await _authService.loginNow(email, password);
      if (res == "login successfully") {
        // if (userData?.userName != null && userData?.gender != null) {
        replaceWithLandingScreenView();
        // } else {
        //   _navigationService.replaceWithEditProfileView();
        // }
      }
    } else {
      showErrorSnack("pleas field all text field");
    }
    setBusy(false);
  }

  navigateToSignup() {
    _navigationService.navigateToSigupScreenView();
  }

  replaceWithLandingScreenView() {
    _navigationService.replaceWithLandingScreenView();
  }
}
