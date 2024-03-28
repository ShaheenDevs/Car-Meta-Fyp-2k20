import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'cars_viewmodel.dart';

class CarsView extends StackedView<CarsViewModel> {
  const CarsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CarsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  CarsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CarsViewModel();
}
