// ignore_for_file: unnecessary_const

import 'package:car_meta/ui/common/app_colors.dart';
import 'package:car_meta/ui/common/app_image.dart';
import 'package:car_meta/ui/common/reusable_widgets/citysheet.dart';
import 'package:car_meta/ui/common/reusable_widgets/inputfield.dart';
import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'myprofile_viewmodel.dart';

class MyprofileView extends StackedView<MyprofileViewModel> {
  const MyprofileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MyprofileViewModel viewModel,
    Widget? child,
  ) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Update Profile"),
          actions: [
            TextButton(
                onPressed: () {
                  viewModel.update();
                },
                child: const Text("Save"))
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(22),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(height: height * 0.04),
              Stack(
                children: [
                  viewModel.profile.isEmpty
                      ? const CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(profile),
                        )
                      : CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(viewModel.profile),
                        ),
                  Positioned(
                    right: 3,
                    bottom: 3,
                    child: InkWell(
                      onTap: viewModel.pickImage,
                      child: const CircleAvatar(
                        backgroundColor: kcLightGrey,
                        radius: 17,
                        child: Icon(Icons.camera),
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    customInputField(
                      width: width,
                      height: height,
                      controller: viewModel.userNameController,
                      prefixIcon: const Icon(Icons.person,
                          color: Colors.black, size: 25),
                      hintText: 'User Name',
                    ),
                    verticalSpaceSmall,
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return CitySelectionSheet();
                          },
                        ).then((selectedCity) {
                          if (selectedCity != null) {
                            viewModel.cityController.text = selectedCity;
                            NotificationListener;
                          }
                        });
                      },
                      child: customInputField(
                        width: width,
                        height: height,
                        controller: viewModel.cityController,
                        prefixIcon: const Icon(Icons.location_on,
                            color: Colors.black, size: 25),
                        hintText: 'Location',
                        suffixIcon: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return CitySelectionSheet();
                              },
                            ).then((selectedCity) {
                              if (selectedCity != null) {
                                viewModel.cityController.text = selectedCity;
                                NotificationListener;
                              }
                            });
                          },
                          child: const Icon(Icons.arrow_drop_down_outlined,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    customInputField(
                      width: width,
                      height: height,
                      controller: viewModel.phoneController,
                      prefixIcon: const Icon(Icons.phone,
                          color: Colors.black, size: 25),
                      hintText: 'Phone Number',
                    ),
                    verticalSpaceSmall,
                    customInputField(
                      width: width,
                      height: height,
                      controller: viewModel.dobController,
                      prefixIcon: const Icon(Icons.calendar_today,
                          color: Colors.black, size: 25),
                      hintText: 'Date of Birth',
                    ),
                    verticalSpaceSmall,
                    customInputField(
                      width: width,
                      height: height,
                      controller: viewModel.genderController,
                      prefixIcon:
                          const Icon(Icons.male, color: Colors.black, size: 25),
                      hintText: 'Gender',
                    ),
                    verticalSpaceSmall,
                    customInputField(
                      width: width,
                      height: height,
                      controller: viewModel.skillController,
                      prefixIcon: const Icon(Icons.work_history,
                          color: Colors.black, size: 25),
                      hintText: 'Add Skill',
                      suffixIcon: GestureDetector(
                        onTap: viewModel.updateSkill,
                        child: const Icon(Icons.add, color: Colors.black),
                      ),
                    ),
                    verticalSpaceSmall,
                    SizedBox(
                      height: 30,
                      child: Row(
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              padding: const EdgeInsets.only(left: 30),
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  (viewModel.userData?.skills ?? []).length,
                              itemBuilder: ((context, index) {
                                return Text(viewModel.userData?.skills![index]);
                              })),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }

  @override
  void onViewModelReady(MyprofileViewModel viewModel) {
    viewModel.onViewModelReady();
    super.onViewModelReady(viewModel);
  }

  @override
  MyprofileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MyprofileViewModel();
}
