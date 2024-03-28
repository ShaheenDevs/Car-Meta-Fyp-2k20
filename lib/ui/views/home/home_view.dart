import 'package:car_meta/ui/common/reusable_widgets/categoriescard.dart';
import 'package:car_meta/ui/common/reusable_widgets/resuable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     IconButton(
              //         onPressed: () {
              //           // Navigator.push(
              //           //     context,
              //           //     MaterialPageRoute(
              //           //         builder: (context) => const MySettings()));
              //         },
              //         icon: const Icon(Icons.menu_outlined)),
              //     const Text(
              //       'Car Meta',
              //       style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 38,
              //           fontWeight: FontWeight.bold),
              //     ),
              //     InkWell(
              //       onTap: () {
              //         //show dialog box
              //         showDialog(
              //             context: context,
              //             builder: (BuildContext context) {
              //               return AlertDialog(
              //                 title: const Text('Are you sure?'),
              //                 content: const Text(
              //                     'Do you want to logout from the app'),
              //                 actions: [
              //                   TextButton(
              //                       onPressed: () async {
              //                         // await FirebaseAuth.instance
              //                         //     .signOut()
              //                         //     .then((value) {
              //                         //   Navigator.push(
              //                         //       context,
              //                         //       MaterialPageRoute(
              //                         //           builder: (context) =>
              //                         //               const MyLogin()));
              //                         // });
              //                       },
              //                       child: const Text('Yes')),
              //                   TextButton(
              //                       onPressed: () {
              //                         Navigator.pop(context);
              //                       },
              //                       child: const Text('No'))
              //                 ],
              //               );
              //             });
              //       },
              //       child: CircleAvatar(
              //         radius: 22,
              //         backgroundColor: Colors.grey[400],
              //         child: const Text(
              //           'P',
              //           style: TextStyle(
              //               fontWeight: FontWeight.w900,
              //               fontSize: 20,
              //               color: Colors.black),
              //           textAlign: TextAlign.center,
              //         ),
              //       ),
              //     )
              //   ],
              // ),
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: searchTextFeild("Search Products", Icons.search_outlined,
                  viewModel.searchCtrl),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const MyCars()));
                      // setState(() {
                      //   showparts = false;
                      // });
                    },
                    child: const CategoriesCards(
                      imagePath: 'assets/car.png',
                      title: 'Cars',
                      colr: Color.fromARGB(255, 255, 187, 0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // setState(() {
                      //   showparts = true;
                      // });
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const MySpareParts()));
                    },
                    child: const CategoriesCards(
                        imagePath: 'assets/spareparts.jpg',
                        title: 'Spare Parts',
                        colr: Color.fromARGB(255, 202, 59, 228)),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const MyCars()));
                    },
                    child: const CategoriesCards(
                      imagePath: 'assets/fuel.jpg',
                      title: 'Find A Pump',
                      colr: Colors.indigoAccent,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const MyMechanicList()));
                    },
                    child: const CategoriesCards(
                      imagePath: 'assets/mechanic.png',
                      title: 'Find A Mechanic',
                      colr: Color.fromARGB(255, 66, 221, 73),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Recent Updates",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const MyCarDetails()));
                  },
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 15.0,

                      //childAspectRatio: 50/25,
                    ),
                    //shrinkWrap: true,
                    itemCount: 4,
                    // showparts
                    //     ? vehController.parts.length
                    //     : vehController.vehicles.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Text("data"),
                      );
                      // car_widget(
                      //     imagePath: showparts
                      //         ? vehController.parts[index].imagePath!
                      //         : vehController.vehicles[index].imagePath!,
                      //     title: showparts
                      //         ? vehController.parts[index].title!
                      //         : vehController.vehicles[index].title!,
                      //     brand: showparts
                      //         ? vehController.parts[index].title!
                      //         : vehController.vehicles[index].title!,
                      //     price: showparts
                      //         ? vehController.parts[index].price!
                      //         : vehController.vehicles[index].price!,
                      //     index: index);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
