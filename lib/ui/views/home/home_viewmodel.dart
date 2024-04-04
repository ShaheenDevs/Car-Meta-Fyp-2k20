import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  // final List<Function> listOfPages = [
  //   navigateToCars(),
  //   navigateToSpareParts(),
  //   navigateToPumps(),
  //   navigateToMechanics()
  // ];

  navigateToCars() {
    _navigationService.navigateToCarsView();
  }

  navigateToProductDetails() {
    _navigationService.navigateToProductDetailView();
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
