import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/picker_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
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

  navigateToHelpSupport() {
    _navigationService.navigateToHelpSupportView();
  }

  navigateToAppointment() {
    _navigationService.navigateToAppointmentDetailView();
  }

  navigateToOrders() {
    _navigationService.navigateToOrderDetailView();
  }

  navigateToProfile() {
    _navigationService.navigateToMyprofileView();
  }
}
