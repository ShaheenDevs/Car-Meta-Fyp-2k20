import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/models/product.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/picker_service.dart';
import 'package:car_meta/services/product_service.dart';
import 'package:car_meta/services/snak_bar.dart';
import 'package:car_meta/ui/common/const_variable.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PostViewModel extends BaseViewModel {
  final _authService = locator<AuthService>();
  final _imagePickerService = locator<PickerService>();
  final _productService = locator<ProductService>();

  TextEditingController titleCtrl = TextEditingController();
  TextEditingController modelCtrl = TextEditingController();
  TextEditingController milageCtrl = TextEditingController();
  TextEditingController priceCtrl = TextEditingController();
  String selectedBrand = brandList.first;
  String selectedProductType = productTypeList.first;
  ProductModel product = ProductModel();
  AuthModel? get userData => _authService.userData;

  onViewModelReady() {
    notifyListeners();
  }

  onChangedBrand(e) {
    selectedBrand = e;
    notifyListeners();
  }

  onChangedProductType(e) {
    selectedProductType = e;
    notifyListeners();
  }

  pickImage() async {
    setBusy(true);
    product.url =
        await _imagePickerService.pickImage(product.type ?? "product");
    setBusy(false);
    notifyListeners();
  }

  postAd() async {
    setBusy(true);
    String title = titleCtrl.text.trim();
    String model = modelCtrl.text.trim();
    String milage = milageCtrl.text.trim();
    String price = priceCtrl.text.trim();
    if (title.isNotEmpty &&
        model.isNotEmpty &&
        milage.isNotEmpty &&
        price.isNotEmpty &&
        title.isNotEmpty) {
      product.title = title;
      product.model = model;
      product.milage = milage;
      product.price = int.parse(price);
      product.type = selectedProductType;
      product.subType = selectedBrand;
      product.createOn = DateTime.now();
      product.saller = SallerModel(
          uId: userData?.uID,
          name: userData?.userName,
          profile: userData?.profile);
      await _productService.postAd(product);
      product = ProductModel();
      titleCtrl.clear();
      modelCtrl.clear();
      milageCtrl.clear();
      priceCtrl.clear();
    } else {
      showSuccessSnack("fill all textField");
    }
    setBusy(false);
  }
}
