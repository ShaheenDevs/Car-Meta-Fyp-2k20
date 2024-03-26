import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'nav_bar_c_viewmodel.dart';

class NavBarCView extends StackedView<NavBarCViewModel> {
  const NavBarCView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NavBarCViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Text("data c"),
      ),
    );
  }

  @override
  NavBarCViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NavBarCViewModel();
}
