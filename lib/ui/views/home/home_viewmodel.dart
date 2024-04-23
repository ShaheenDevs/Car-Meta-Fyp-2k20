import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/models/product.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/product_service.dart';
import 'package:car_meta/services/snak_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends ReactiveViewModel {
  final _navigationService = locator<NavigationService>();
  final _productService = locator<ProductService>();
  final _authService = locator<AuthService>();
  AuthModel? get userData => _authService.userData;

  List<ProductModel> allSearchProducts = [];
  List<ProductModel> get allProducts => _productService.allProducts;
  onViewModelReady() async {
    delayed();
    allSearchProducts = allProducts;
    notifyListeners();
  }

  delayed() async {
    await Future.delayed(const Duration(seconds: 3));
    onViewModelReady();
  }

  onChangeSearch(i) {
    if (i.isNotEmpty) {
      allSearchProducts = allProducts.where((e) {
        return (e.title ?? "").toLowerCase().contains(i.toLowerCase());
      }).toList();
    } else {
      allSearchProducts = allProducts;
    }
    notifyListeners();
  }

  savedAndUnsavedProduct(index, isSaved) async {
    ProductModel product = allProducts[index];
    if (isSaved) {
      await _productService.unSavedProduct(product.id);
      showSuccessSnack("Removed");
    } else {
      await _productService.savedProduct(product.id);
      showSuccessSnack("Saved");
    }
    notifyListeners();
  }

  navigateToCars() {
    _navigationService.navigateToCarsView();
  }

  navigateToPostDetailsView(product) async {
    await _navigationService.navigateToPostDetailsView(product: product);
    onViewModelReady();
  }

  navigateToSpareParts() {
    _navigationService.navigateToSparePartsView();
  }

  navigateToPumps() {
    _navigationService.navigateToFindPumpView();
  }

  navigateToMechanics() {
    _navigationService.navigateToFindMechanicView();
  }

  TextEditingController searchCtrl = TextEditingController();
}
