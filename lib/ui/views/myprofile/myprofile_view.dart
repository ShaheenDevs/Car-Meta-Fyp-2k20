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
          child:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: height*0.04),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          GestureDetector(onTap:(){
                            Navigator.pop(context);
                          },child: Icon(CupertinoIcons.arrow_left,color: Colors.black,size: 25,)),
                          SizedBox(width: width*0.03),
                          Text('My Profile',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(width: width*0.25),
                          TextButton(onPressed:(){
                            Navigator.pop(context);
                          },
                              child: Text('Done',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),
                    SizedBox(height: height*0.04),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                        child: Container(
                          height: height*0.15,
                          width: width*0.3,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Colors.grey
                            ),
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assests/car.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height*0.01),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Arham Qayyum',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(height: height*0.01),
                      ],
                    ),
                    SizedBox(height: height*0.05),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              customInputField(
                                width: width,
                                height: height,
                                controller: viewModel.cityController,
                                prefixIcon: Icon(CupertinoIcons.location_solid, color: Colors.black, size: 25),
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
                                        setState(() {
                                          _cityController.text = selectedCity; // Update the text field with the selected city
                                        }); // Close the bottom sheet
                                      }
                                    }
                                    );
                                  },
                                  child: Icon(Icons.arrow_drop_down_outlined, size: 35, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height*0.03),
                          Row(
                            children: [
                              customInputField(
                                width: width,
                                height: height,
                                prefixIcon: Icon(Icons.email, color: Colors.black, size: 25),
                                hintText: 'Email Address',
                              ),
                            ],
                          ),
                          SizedBox(height: height*0.03),
                          Row(
                            children: [
                              customInputField(
                                width: width,
                                height: height,
                                prefixIcon: Icon(Icons.calendar_today, color: Colors.black, size: 25),
                                hintText: 'Date of Birth',
                                // suffixIcon: GestureDetector(
                                //   onTap: () {
                                //     // Code to execute when the suffix icon is tapped
                                //   },
                                //   child: Icon(Icons.arrow_drop_down_outlined, size: 35, color: Colors.white),
                                // ),
                              ),
                            ],
                          ),
                          SizedBox(height: height*0.03),
                          Row(
                            children: [
                              customInputField(
                                width: width,
                                height: height,
                                prefixIcon: Icon(Icons.male, color: Colors.black, size: 25),
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
                  ]
              ),
            ),
          ),
        )
    );
  }

  @override
  MyprofileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MyprofileViewModel();
}
