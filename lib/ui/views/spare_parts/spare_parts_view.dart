import 'package:car_meta/ui/common/reusable_widgets/logocard.dart';
import 'package:car_meta/ui/common/reusable_widgets/resuable_widgets.dart';
import 'package:car_meta/ui/views/home/widgets/car_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'spare_parts_viewmodel.dart';

class SparePartsView extends StackedView<SparePartsViewModel> {
  const SparePartsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SparePartsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Spare Parts"),
      ),
      body: Column(children: [
        // SizedBox(
        //   height: 20.0,
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:15.0),
          child: searchTextFeild(
              'Search Cars', Icons.search_outlined, viewModel.searchCtrl),
        ),
        // SizedBox(
        //   height: 5.0,
        // ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Text(
                'Brands',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(
          height: 50.0,
          width: MediaQuery.of(context).size.width,
          // color: Colors.grey[200],
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: () {
                  // setState(() {
                  //   filterCars = "Honda"; // Set the selected brand
                  // });
                },
                child: const LogoCards(imagePath: 'assets/honda.png', colr: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  // setState(() {
                  //   filterCars = "Toyota"; // Set the selected brand
                  // });
                },
                child: const LogoCards(imagePath: 'assets/toyota.png', colr: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  // setState(() {
                  //   filterCars = "MG"; // Set the selected brand
                  // });
                },
                child: const LogoCards(imagePath: 'assets/mg1.png', colr: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  // setState(() {
                  //   filterCars = "KIA"; // Set the selected brand
                  // });
                },
                child: const LogoCards(imagePath: 'assets/kia1.png', colr: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  // setState(() {
                  //   filterCars = "Suzuki"; // Set the selected brand
                  // });
                },
                child: const LogoCards(imagePath: 'assets/suzuki.png', colr: Colors.white),
              ),
              GestureDetector(
                onTap: () {
                  // setState(() {
                  //   filterCars = "Hondai"; // Set the selected brand
                  // });
                },
                child: const LogoCards(imagePath: 'assets/hondai.png', colr: Colors.white),
              ),
              // Add more categories as needed
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Text(
                'Available Cars',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
              ),
            ],
          ),
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
      
                    childAspectRatio: 50/25,
                  ),
                  //shrinkWrap: true,
                  itemCount: 14,
                  // showparts
                  //     ? vehController.parts.length
                  //     : vehController.vehicles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return 
                    // Container(
                    //   child: Text("data"),
                    // );
                    car_widget(
                        imagePath: "s0.jpeg",
                        // showparts
                        //     ? vehController.parts[index].imagePath!
                        //     : vehController.vehicles[index].imagePath!,
                        title: "Corolla GLI" ,
                        // showparts
                        //     ? vehController.parts[index].title!
                        //     : vehController.vehicles[index].title!,
                        brand: "Toyota",
                        // showparts
                        //     ? vehController.parts[index].title!
                        //     : vehController.vehicles[index].title!,
                        price: "3500000",
                        // showparts
                        //     ? vehController.parts[index].price!
                        //     : vehController.vehicles[index].price!,
                        index: index);
                  },
                ),
              ),
            ),
          ),
      ],),
    );
  }

  @override
  SparePartsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SparePartsViewModel();
}
