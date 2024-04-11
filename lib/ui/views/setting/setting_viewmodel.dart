import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/models/petrol_pump.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/picker_service.dart';
import 'package:car_meta/services/product_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  final _imagePickerService = locator<PickerService>();
  final _productService = locator<ProductService>();

  AuthModel? get userData => _authService.userData;
  String profile = "";
  bool isPump = false;
  onViewModelReady() {
    profile = userData?.profile ?? '';
    notifyListeners();
  }

  onChangePump(e) async {
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    isPump = e;
    notifyListeners();
    if (isPump) {
      _productService.addPetroPump(
        PetrolPump(
          name: userData?.userName,
          phone: userData?.phoneNo,
          position: position,
        ),
      );
    } else {
      _productService.removePetroPump();
    }
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
