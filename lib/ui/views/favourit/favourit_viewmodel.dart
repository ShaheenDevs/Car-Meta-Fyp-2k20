import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/models/product.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/product_service.dart';
import 'package:car_meta/services/snak_bar.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FavouritViewModel extends ReactiveViewModel {
  final _productService = locator<ProductService>();
  final _authService = locator<AuthService>();
  final _navigationService = locator<NavigationService>();
  AuthModel? get userData => _authService.userData;

  List<ProductModel> get savedPostes => _productService.allProducts
      .where((e) => e.saved?.contains(userData?.uID) ?? false)
      .toList();

  unSavedProduct(ProductModel product) async {
    await _productService.unSavedProduct(product.id);
    showSuccessSnack("Removed");
    notifyListeners();
  }

  navigateToPostDetailsView(product) {
    _navigationService.navigateToPostDetailsView(product: product);
  }
}
