import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked.dart';

class PostDetailsViewModel extends ReactiveViewModel {
  final _navigationService = locator<NavigationService>();
  // final _bottomSheetService = locator<BottomSheetService>();
  final _authService = locator<AuthService>();
  // final _productService = locator<ProductService>();
  AuthModel? get userData => _authService.userData;

  onViewModelReady() async {}

  // void showDialog() {
  //   _dialogService.showCustomDialog(
  //     variant: DialogType.infoAlert,
  //     title: 'Stacked Rocks!',
  //     description: 'Give stacked $_counter stars on Github',
  //   );
  // }

  // void showBottomSheet() {
  //   _bottomSheetService.showCustomSheet(
  //     variant: BottomSheetType.notice,
  //     title: ksPostDetailsBottomSheetTitle,
  //     description: ksPostDetailsBottomSheetDescription,
  //   );
  // }
  back() {
    _navigationService.back();
  }
}
