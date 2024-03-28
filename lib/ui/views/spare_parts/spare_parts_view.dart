import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'spare_parts_viewmodel.dart';

class SparePartsView extends StackedView<SparePartsViewModel> {
  const SparePartsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SparePartsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Spare Parts"),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  SparePartsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SparePartsViewModel();
}
