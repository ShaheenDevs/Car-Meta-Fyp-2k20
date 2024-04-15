import 'package:car_meta/ui/common/reusable_widgets/categoriescard.dart';
import 'package:car_meta/ui/common/reusable_widgets/resuable_widgets.dart';
import 'package:car_meta/ui/views/home/widgets/home_card.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: searchTextFeild("Search Products", Icons.search_outlined,
                  viewModel.onChangeSearch),
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 5),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      viewModel.navigateToCars();
                    },
                    child: const CategoriesCards(
                      imagePath: 'assets/car.png',
                      title: 'Cars',
                      colr: Color.fromARGB(255, 255, 187, 0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      viewModel.navigateToSpareParts();
                    },
                    child: const CategoriesCards(
                        imagePath: 'assets/spareparts.png',
                        title: 'Spare Parts',
                        colr: Color.fromARGB(255, 202, 59, 228)),
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.navigateToPumps();
                    },
                    child: const CategoriesCards(
                      imagePath: 'assets/fuel.png',
                      title: 'Find A Pump',
                      colr: Colors.indigoAccent,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      viewModel.navigateToMechanics();
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
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
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
            // const SizedBox(
            //   height: 5,
            // ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const MyCarDetails()));
                },
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 15.0,
                    childAspectRatio: 33 / 35,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: viewModel.allProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        viewModel.navigateToPostDetailsView(
                            viewModel.allProducts[index]);
                      },
                      child: homeCard(210, index, viewModel.allProducts[index],
                          viewModel.savedAndUnsavedProduct, viewModel.userData),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    viewModel.onViewModelReady();
    super.onViewModelReady(viewModel);
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
