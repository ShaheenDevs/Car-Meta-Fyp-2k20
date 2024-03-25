import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginScreenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  navigateToSignup() {
    _navigationService.navigateToSigupScreenView();
  }

  navigateToLandingScreen() {
    _navigationService.navigateToLandingScreenView();
  }

  TextEditingController userNameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
}
