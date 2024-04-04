import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/picker_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MyprofileViewModel extends BaseViewModel {
  TextEditingController userNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  final _authService = locator<AuthService>();
  final _imagePickerService = locator<PickerService>();

  AuthModel? get userData => _authService.userData;
  String profile = "";

  onViewModelReady() {
    profile = userData?.profile ?? '';
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

  update() async {
    setBusy(true);
    String? res = await _authService.updateUserByMap({
      "userName": userNameController.text,
      "gender": genderController.text,
      "phoneNo": phoneController.text
    });
    setBusy(false);
    if (res == "update successfully") {}
  }
}
