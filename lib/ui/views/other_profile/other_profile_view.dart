// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:car_meta/ui/common/app_image.dart';
import 'package:car_meta/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'other_profile_viewmodel.dart';

class OtherProfileView extends StackedView<OtherProfileViewModel> {
  final String uID;
  const OtherProfileView({Key? key, required this.uID}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OtherProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          IconButton(
              onPressed: viewModel.navigateToChatRoomView,
              icon: Icon(Icons.chat))
        ],
      ),
      body: viewModel.isBusy
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                  ),
                  (viewModel.otherUserData?.profile ?? "").isEmpty
                      ? const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(profile),
                        )
                      : CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              viewModel.otherUserData?.profile ?? ""),
                        ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Username: ${viewModel.otherUserData?.userName}'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Email: ${viewModel.otherUserData?.email}'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Phone: ${viewModel.otherUserData?.phoneNo}'),
                    ],
                  ),
                  // SizedBox(height: 10),
                  // Text('Date of Birth: ${DateTime.parse('dob').toLocal()}'),
                  // SizedBox(height: 10),
                  // Text(
                  //     'Join Date: ${DateTime.parse('joinDate').toLocal()}'),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 25,
                        child: Image.asset("assets/mechanic.png"),
                      ),
                      //  Icon(Icons.person),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Mechanic: ${viewModel.otherUserData?.isMechanic}'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 25,
                        child: Image.asset("assets/petrol_pump_icon.png"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                          'Petrol Pump: ${viewModel.otherUserData?.isPetrolPump}'),
                    ],
                  ),
                  verticalSpaceSmall,
                  SizedBox(
                    height: 40,
                    child: Row(
                      children: [
                        Text(" Skill:"),
                        ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                (viewModel.userData?.skills ?? []).length,
                            itemBuilder: ((context, index) {
                              return Card(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(viewModel.userData?.skills![index]),
                              ));
                            })),
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }

  @override
  void onViewModelReady(OtherProfileViewModel viewModel) {
    viewModel.onViewModelReady(uID);
    super.onViewModelReady(viewModel);
  }

  @override
  OtherProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OtherProfileViewModel();
}
