import 'dart:developer';

import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/picker_service.dart';
import 'package:car_meta/ui/views/auth/startup/startup_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MyprofileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController skillController = TextEditingController();
  final _authService = locator<AuthService>();
  final _imagePickerService = locator<PickerService>();

  AuthModel? get userData => _authService.userData;
  String profile = "";

  onViewModelReady() {
    profile = userData?.profile ?? '';
    userNameController.text = userData?.userName ?? '';
    cityController.text = userData?.address ?? '';
    phoneController.text = userData?.phoneNo ?? '';
    dobController.text = userData?.dob ?? '';
    genderController.text = userData?.gender ?? '';
    notifyListeners();
  }

  pickImage() async {
    profile = await _imagePickerService.pickImage("profile");
    if (profile.isNotEmpty) {
      userData?.profile = profile;
      await _authService.updateUserByMap({"profile": profile});
    }
    notifyListeners();
  }

  updateSkill() {
    String e = skillController.text.trim();
    skillController.clear();
    if (userData!.skills!.contains(e)) {
      userData!.skills!.remove(e);
      log("$e removed from the array.");
    } else {
      userData!.skills!.add(e);
      log("$e added to the array.");
    }
  }

  update() async {
    setBusy(true);
    profile = userData?.profile ?? '';
    cityController.text = userData?.address ?? '';
    phoneController.text = userData?.phoneNo ?? '';
    userData?.dob = dobController.text;
    userData?.gender = genderController.text;
    String? res = await _authService.updateUserByMap({
      "userName": userNameController.text,
      "gender": genderController.text,
      "phoneNo": phoneController.text,
      "address": cityController.text,
      "dob": dobController.text,
    });
    _authService.updateUserData();
    _navigationService.clearStackAndShowView(const StartupView());
    setBusy(false);
    if (res == "update successfully") {}
  }
}
