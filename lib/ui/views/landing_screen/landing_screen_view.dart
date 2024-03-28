// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
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
        //   actions: <Widget>[
        //   IconButton(
        //     icon: Icon(
        //       Icons.settings,
        //       // color: Colors.white,
        //     ),
        //     onPressed: () {
        //       viewModel.navigateToProfile();
        //     },
        //   )
        // ],
        actions: [
          InkWell(
            onTap: () {
              //show dialog box
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Are you sure?'),
                      content: const Text('Do you want to logout from the app'),
                      actions: [
                        TextButton(
                            onPressed: () async {
                              // await FirebaseAuth.instance
                              //     .signOut()
                              //     .then((value) {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) =>
                              //               const MyLogin()));
                              // });
                            },
                            child: const Text('Yes')),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('No'))
                      ],
                    );
                  });
            },
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.grey[400],
              child: const Text(
                'P',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'My Account',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.amber,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            const Text(
                              'Talha Mehm',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              // onTap: viewModel.navigateToProfile(),
                              child: const Text(
                                'View And Edit',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
            ListTile(
              leading: const Icon(Icons.newspaper),
              title: const Text(
                'Order Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                viewModel.navigateToOrders();
                // Handle onTap
              },
            ),
            ListTile(
              leading: const Icon(Icons.date_range),
              title: const Text(
                'Appointment Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                viewModel.navigateToAppointment();
                // Handle onTap
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text(
                'Help & Support',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                viewModel.navigateToHelpSupport();
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(
                'Logout',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Are you sure?'),
                      content: const Text('Do you want to logout from the app'),
                      actions: [
                        TextButton(
                          onPressed: () async {
                            // await FirebaseAuth.instance.signOut().then((value) {
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => const MyLogin(),
                            //     ),
                            //   );
                            // });
                          },
                          child: const Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('No'),
                        )
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      // drawer: const Drawer(

      // ),
      bottomNavigationBar: CurvedNavigationBar(
        key: viewModel.bottomNavigationKey,
        index: 2,
        items: [
          const CurvedNavigationBarItem(
            child: Icon(
              Icons.home,
              size: 34,
            ),
            // label: 'Home',
          ),
          const CurvedNavigationBarItem(
            child: Icon(
              Icons.chat_outlined,
              size: 34,
            ),
            // label: 'Chat',
          ),
          const CurvedNavigationBarItem(
            child: Icon(
              Icons.add_circle,
              size: 34,
            ),
            // label: 'Circle',
          ),
          const CurvedNavigationBarItem(
            child: Icon(
              Icons.star_border,
              size: 34,
            ),
            // label: 'Feed',
          ),
          const CurvedNavigationBarItem(
            child: Icon(
              Icons.settings,
              size: 34,
            ),
            // label: 'Personal',
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          viewModel.setTab(index);
          // viewModel.page = index;
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
