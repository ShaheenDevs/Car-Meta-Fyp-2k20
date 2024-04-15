// ignore_for_file: prefer_const_constructors

import 'package:car_meta/ui/common/app_colors.dart';
import 'package:car_meta/ui/common/app_image.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'setting_viewmodel.dart';

class SettingView extends StackedView<SettingViewModel> {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SettingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'My Account',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                          child: CircleAvatar(
                            backgroundColor: kcPrimaryColor,
                            radius: 17,
                            child: Icon(Icons.camera),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        viewModel.userData?.userName ?? "",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          viewModel.navigateToProfile();
                        },
                        child: Text(
                          'View And Edit',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              leading: Image.asset(
                petrolPumpIcon,
                height: 40,
              ),
              title: const Text(
                'Petrol Pump',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Switch(
                value: viewModel.userData?.isPetrolPump ?? false,
                onChanged: viewModel.onChangePump,
              ),
            ),
            ListTile(
              leading: Image.asset(
                carMechanicIcon,
                height: 35,
              ),
              title: const Text(
                'Mechanic',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: Switch(
                value: viewModel.userData?.isMechanic ?? false,
                onChanged: viewModel.onChangeMechanic,
              ),
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
                          onPressed: viewModel.logout,
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
    );
  }

  @override
  void onViewModelReady(SettingViewModel viewModel) {
    viewModel.onViewModelReady();
    super.onViewModelReady(viewModel);
  }

  @override
  SettingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingViewModel();
}
