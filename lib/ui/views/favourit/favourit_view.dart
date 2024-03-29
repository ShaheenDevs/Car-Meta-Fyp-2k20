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
      // appBar: AppBar(
      //   title: Text("Favourites"),
      // ),
     body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: ListView.builder(
          itemCount: 14, // Specifies the number of items in the list
          itemBuilder: (context, index) {
            return Padding( padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
              
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.40),
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  title: Text("Item"), // Title of the ListTile
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Item Detail"),

                      Text("Price"),
                    ],
                  ), // Subtitle of the ListTile
                ),
              ),
            );
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
