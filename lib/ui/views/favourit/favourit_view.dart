import 'package:car_meta/ui/views/favourit/item_card.dart';
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
      body: Container(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: ListView.builder(
          itemCount: viewModel.savedPostes.length,
          itemBuilder: (context, index) {
            return MySavedListItemCard(product: viewModel.savedPostes[index]);
          },
        ),
      ),
    );
  }

  @override
  FavouritViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FavouritViewModel();
}
