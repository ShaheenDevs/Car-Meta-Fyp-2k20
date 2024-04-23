import 'package:car_meta/ui/common/reusable_widgets/logocard.dart';
import 'package:car_meta/ui/common/reusable_widgets/resuable_widgets.dart';
import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:car_meta/ui/views/spare_parts/widgets/spare_parts_card.dart';
import 'package:car_meta/ui/widgets/textform_field/textform_field.dart';
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
      appBar: AppBar(title: const Text("Spare Parts")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              searchTextFeild(
                  'Search Spare Parts',
                  GestureDetector(
                    onTap: viewModel.onChangeFilterField,
                    child: const Icon(
                      Icons.line_style,
                      color: Colors.black87,
                    ),
                  ),
                  viewModel.onChangeSearch),
              if (viewModel.showFilterField)
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: TextformField(
                    title: "Start Price",
                    ctrl: viewModel.startPrice,
                    onChanged: (e) {
                      viewModel.onChangeShowAbleList();
                    },
                  ),
                ),
              if (viewModel.showFilterField)
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: TextformField(
                    title: "End Price",
                    ctrl: viewModel.endPrice,
                    onChanged: (e) {
                      viewModel.onChangeShowAbleList();
                    },
                  ),
                ),
              verticalSpaceSmall,
              const Row(
                children: [
                  Text(
                    'Brands',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    GestureDetector(
                      onTap: () {
                        viewModel.onChangeType("Honda");
                      },
                      child: const LogoCards(
                          imagePath: 'assets/honda.png', colr: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        viewModel.onChangeType("Toyota");
                      },
                      child: const LogoCards(
                          imagePath: 'assets/toyota.png', colr: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        viewModel.onChangeType("MG");
                      },
                      child: const LogoCards(
                          imagePath: 'assets/mg1.png', colr: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        viewModel.onChangeType("KIA");
                      },
                      child: const LogoCards(
                          imagePath: 'assets/kia1.png', colr: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        viewModel.onChangeType("Suzuki");
                      },
                      child: const LogoCards(
                          imagePath: 'assets/suzuki.png', colr: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        viewModel.onChangeType("Hyundai");
                      },
                      child: const LogoCards(
                          imagePath: 'assets/hondai.png', colr: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Row(
                children: [
                  Text(
                    'Available Spare Parts',
                    style:
                        TextStyle(fontSize: 17.0, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              verticalSpaceSmall,
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 33 / 35,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: viewModel.showAbleList.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      viewModel.navigateToPostDetailsView(
                          viewModel.showAbleList[index]);
                    },
                    child: sparePartsCard(
                        210,
                        index,
                        viewModel.showAbleList[index],
                        viewModel.savedAndUnsavedProduct,
                        viewModel.userData),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void onViewModelReady(SparePartsViewModel viewModel) {
    viewModel.onViewModelReady();
    super.onViewModelReady(viewModel);
  }

  @override
  SparePartsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SparePartsViewModel();
}
