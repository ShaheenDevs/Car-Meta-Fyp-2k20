import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'nav_bar_a_viewmodel.dart';

class NavBarAView extends StackedView<NavBarAViewModel> {
  const NavBarAView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NavBarAViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Text("data a"),
      ),
    );
  }

  @override
  NavBarAViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NavBarAViewModel();
}
