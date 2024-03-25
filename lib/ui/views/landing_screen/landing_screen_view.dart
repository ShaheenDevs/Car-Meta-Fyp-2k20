import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'landing_screen_viewmodel.dart';

class LandingScreenView extends StackedView<LandingScreenViewModel> {
  const LandingScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LandingScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(title: Text("Car Meta"),),
      drawer: Drawer(
        
      ),
    );
  }

  @override
  LandingScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LandingScreenViewModel();
}
