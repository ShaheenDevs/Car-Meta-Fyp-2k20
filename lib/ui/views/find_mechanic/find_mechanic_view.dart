import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'find_mechanic_viewmodel.dart';

class FindMechanicView extends StackedView<FindMechanicViewModel> {
  const FindMechanicView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FindMechanicViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Find a Mechanic"),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  FindMechanicViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FindMechanicViewModel();
}
