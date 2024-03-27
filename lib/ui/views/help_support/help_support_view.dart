import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'help_support_viewmodel.dart';

class HelpSupportView extends StackedView<HelpSupportViewModel> {
  const HelpSupportView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HelpSupportViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text("Hellp and Support"),),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  HelpSupportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HelpSupportViewModel();
}
