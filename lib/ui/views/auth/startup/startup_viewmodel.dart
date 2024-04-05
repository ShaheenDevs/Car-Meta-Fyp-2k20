import 'package:car_meta/models/auth.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  AuthModel? get userData => _authService.userData;

  Future runStartupLogic() async {
    await _authService.initialize();

    await Future.delayed(const Duration(seconds: 2));

    if (userData?.uID != null) {
      _navigationService.replaceWithLandingScreenView();
    } else {
      _navigationService.replaceWithLoginScreenView();
    }
  }
}
