import 'package:car_meta/models/auth.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/product_service.dart';
import 'package:stacked/stacked.dart';
import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends ReactiveViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  final _productService = locator<ProductService>();
  AuthModel? get userData => _authService.userData;

  Future runStartupLogic() async {
    await _authService.initialize();
    await _productService.initialize();
    await Future.delayed(const Duration(seconds: 1));

    if (userData?.uID != null) {
      _navigationService.replaceWithLandingScreenView();
    } else {
      _navigationService.replaceWithLoginScreenView();
    }
  }
}
