// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
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
      appBar: AppBar(
        title: const Text("Car Meta"),
      ),
      drawer: const Drawer(),
      bottomNavigationBar: CurvedNavigationBar(
        key: viewModel.bottomNavigationKey,
        index: 0,
      //   const Icon(
      //   Icons.home,
      //   size: 30,
      // ),
      // const Icon(
      //   Icons.chat_outlined,
      //   size: 30,
      // ),
      // const Icon(
      //   Icons.add_circle_outlined,
      //   size: 30,
      // ),
      // const Icon(
      //   Icons.star_border,
      //   size: 30,
      // ),
      // const Icon(
      //   Icons.settings,
      //   size: 30,
      // ),
        items: [
          const CurvedNavigationBarItem(
            child: Icon(Icons.home),
            label: 'Home',
          ),
          const CurvedNavigationBarItem(
            child: Icon(Icons.chat_outlined),
            label: 'Chat',
          ),
          const CurvedNavigationBarItem(
            child: Icon(Icons.circle_outlined),
            label: 'Circle',
          ),
          const CurvedNavigationBarItem(
            child: Icon(Icons.star_border),
            label: 'Feed',
          ),
          const CurvedNavigationBarItem(
            child: Icon(Icons.settings),
            label: 'Personal',
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          viewModel.page = index;
        },
        letIndexChange: (index) => true,
      ),
      body: Center(
        child: viewModel.tabsList.elementAt(viewModel.page),
      ),
      // body: Container(
      //   color: Colors.blueAccent,
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         Text(viewModel.page.toString(), textScaleFactor: 10.0),
      //         ElevatedButton(
      //           child: const Text('Go To Page of index 1'),
      //           onPressed: () {
      //             final CurvedNavigationBarState? navBarState =
      //                 viewModel.bottomNavigationKey.currentState;
      //             navBarState?.setPage(1);
      //           },
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  @override
  LandingScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LandingScreenViewModel();
}
