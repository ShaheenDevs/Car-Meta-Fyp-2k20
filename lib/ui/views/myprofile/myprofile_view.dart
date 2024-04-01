import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'myprofile_viewmodel.dart';

class MyprofileView extends StackedView<MyprofileViewModel> {
  const MyprofileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MyprofileViewModel viewModel,
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
  MyprofileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MyprofileViewModel();
}
