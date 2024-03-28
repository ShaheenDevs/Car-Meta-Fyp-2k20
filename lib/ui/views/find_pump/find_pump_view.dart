import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'find_pump_viewmodel.dart';

class FindPumpView extends StackedView<FindPumpViewModel> {
  const FindPumpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FindPumpViewModel viewModel,
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
  FindPumpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FindPumpViewModel();
}
