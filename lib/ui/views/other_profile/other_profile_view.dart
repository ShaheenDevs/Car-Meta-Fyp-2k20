// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:car_meta/ui/common/app_image.dart';
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Text('Username: ${viewModel.otherUserData?.userName}'),
                  SizedBox(height: 10),
                  Text('Email: ${viewModel.otherUserData?.email}'),
                  SizedBox(height: 10),
                  Text('Phone: ${viewModel.otherUserData?.phoneNo}'),
                  // SizedBox(height: 10),
                  // Text('Date of Birth: ${DateTime.parse('dob').toLocal()}'),
                  // SizedBox(height: 10),
                  // Text(
                  //     'Join Date: ${DateTime.parse('joinDate').toLocal()}'),
                  SizedBox(height: 10),
                  Text('Mechanic: ${viewModel.otherUserData?.isMechanic}'),
                  SizedBox(height: 10),
                  Text('Petrol Pump: ${viewModel.otherUserData?.isPetrolPump}'),
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
