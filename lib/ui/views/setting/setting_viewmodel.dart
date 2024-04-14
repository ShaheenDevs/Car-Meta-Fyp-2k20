import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/models/petrol_pump.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/picker_service.dart';
import 'package:car_meta/services/product_service.dart';
import 'package:car_meta/services/share_preferances.dart';
import 'package:car_meta/ui/views/auth/login_screen/login_screen_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  onViewModelReady() {
    profile = userData?.profile ?? '';
    notifyListeners();
  }

  onChangePump(e) async {
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    _authService.updateUserByMap({"isPetrolPump": e});
    userData?.isPetrolPump = e;
    notifyListeners();
    if (userData?.isPetrolPump ?? false) {
      _productService.addPetroPump(
        PetrolPump(
            name: userData?.userName,
            phone: userData?.phoneNo,
            position: position,
            profile: userData?.profile),
      );
    } else {
      _productService.removePetroPump();
    }
  }

  onChangeMechanic(e) async {
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    _authService.updateUserByMap({"isMechanic": e});
    userData?.isMechanic = e;
    notifyListeners();
    if (userData?.isMechanic ?? false) {
      _productService.addMechanic(
        PetrolPump(
            name: userData?.userName,
            phone: userData?.phoneNo,
            position: position,
            profile: userData?.profile),
      );
    } else {
      _productService.removeMechanic();
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

  logout() async {
    await FirebaseAuth.instance.signOut().then((value) async {
      await sharedPrefClear();
      _navigationService.clearStackAndShowView(const LoginScreenView());
    });
  }
}
