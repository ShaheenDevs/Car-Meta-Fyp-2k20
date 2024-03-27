import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'favourit_viewmodel.dart';

class FavouritView extends StackedView<FavouritViewModel> {
  const FavouritView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FavouritViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text("Favourites"),),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  FavouritViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FavouritViewModel();
}
