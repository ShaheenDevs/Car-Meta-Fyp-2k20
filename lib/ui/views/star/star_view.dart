import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'star_viewmodel.dart';

class StarView extends StackedView<StarViewModel> {
  const StarView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StarViewModel viewModel,
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
  StarViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StarViewModel();
}
