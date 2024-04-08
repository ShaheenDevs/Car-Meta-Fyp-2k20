import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/models/product.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/product_service.dart';
import 'package:car_meta/services/snak_bar.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SparePartsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _productService = locator<ProductService>();
  final _authService = locator<AuthService>();
  AuthModel? get userData => _authService.userData;

  List<ProductModel> get allCarProducts => _productService.allProducts
      .where((e) => e.type == "Spare Parts")
      .toList();
  List<ProductModel> showAbleList = [];
  String selectedType = "";
  String searching = "";
  onViewModelReady() {
    onChangeShowAbleList();
  }

  onChangeType(e) {
    if (selectedType != e) {
      selectedType = e;
    } else {
      selectedType = "";
    }
    onChangeShowAbleList();
  }

  onChangeSearch(e) {
    searching = e;
    onChangeShowAbleList();
  }

  onChangeShowAbleList() {
    if (searching.isNotEmpty && selectedType.isNotEmpty) {
      showAbleList = allCarProducts
          .where(
              (e) => e.title!.toLowerCase().contains(searching.toLowerCase()))
          .where(
              (e) => e.title!.toLowerCase().contains(searching.toLowerCase()))
          .toList();
    } else if (searching.isNotEmpty) {
      showAbleList = allCarProducts.where((e) {
        return (e.title ?? "").toLowerCase().contains(searching.toLowerCase());
      }).toList();
    } else if (selectedType.isNotEmpty) {
      showAbleList =
          allCarProducts.where((e) => e.subType == selectedType).toList();
    } else {
      showAbleList = allCarProducts;
    }
    notifyListeners();
  }

  savedAndUnsavedProduct(index, isSaved) async {
    ProductModel product = allCarProducts[index];
    if (isSaved) {
      await _productService.unSavedProduct(product.id);
      showSuccessSnack("Removed");
    } else {
      await _productService.savedProduct(product.id);
      showSuccessSnack("Saved");
    }
    onChangeShowAbleList();
  }

  navigateToPostDetailsView(product) {
    _navigationService.navigateToPostDetailsView(product: product);
  }
}
