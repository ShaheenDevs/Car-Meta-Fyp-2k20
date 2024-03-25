import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'nav_bar_b_viewmodel.dart';

class NavBarBView extends StackedView<NavBarBViewModel> {
  const NavBarBView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NavBarBViewModel viewModel,
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
  NavBarBViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NavBarBViewModel();
}
