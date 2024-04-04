// ignore_for_file: unnecessary_const

import 'package:car_meta/ui/common/app_colors.dart';
import 'package:car_meta/ui/common/app_image.dart';
import 'package:car_meta/ui/common/reusable_widgets/citysheet.dart';
import 'package:car_meta/ui/common/reusable_widgets/inputfield.dart';
import 'package:flutter/cupertino.dart';
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
        resizeToAvoidBottomInset: true,
        body: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Colors.white54],
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(22),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(height: height * 0.04),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 25,
                          )),
                      SizedBox(width: width * 0.03),
                      const Text(
                        'My Profile',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: width * 0.25),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Done',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      viewModel.userData?.userName ?? "",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: height * 0.01),
                  ],
                ),
                SizedBox(height: height * 0.05),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
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
                                onTap: () {},
                                child: const Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      Row(
                        children: [
                          customInputField(
                            width: width,
                            height: height,
                            prefixIcon: const Icon(Icons.phone,
                                color: Colors.black, size: 25),
                            hintText: 'Phone Number',
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      Row(
                        children: [
                          customInputField(
                            width: width,
                            height: height,
                            prefixIcon: const Icon(Icons.calendar_today,
                                color: Colors.black, size: 25),
                            hintText: 'Date of Birth',
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      Row(
                        children: [
                          customInputField(
                            width: width,
                            height: height,
                            prefixIcon: const Icon(Icons.male,
                                color: Colors.black, size: 25),
                            hintText: 'Gender',
                            // suffixIcon: GestureDetector(
                            //   onTap: () {
                            //     // Code to execute when the suffix icon is tapped
                            //   },
                            //   child: Icon(Icons.arrow_drop_down_outlined, size: 35, color: Colors.white),
                            // ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ));
  }

  @override
  MyprofileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MyprofileViewModel();
}
