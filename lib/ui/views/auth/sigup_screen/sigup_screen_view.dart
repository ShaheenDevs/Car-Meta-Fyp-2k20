import 'package:car_meta/ui/common/reusable_widgets/resuable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'sigup_screen_viewmodel.dart';

class SigupScreenView extends StackedView<SigupScreenViewModel> {
  const SigupScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SigupScreenViewModel viewModel,
    Widget? child,
  ) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          viewModel.hexStringToColor("5E61F4"),
          viewModel.hexStringToColor("9546C4"),
          viewModel.hexStringToColor("CB2B93"),
        ]),
      ),
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 18,
                      left: 35,
                      right: 35,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 35, top: 18),
                          child: const Text(
                            'Create\nAccount',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 33,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(height: 18),
                        reusableTextFeild(
                            "Enter UserName",
                            Icons.person_outline,
                            false,
                            viewModel.userNameCtrl),
                        const SizedBox(height: 22),
                        reusableTextFeild("Enter Email",
                            Icons.email_outlined, false, viewModel.emailCtrl),
                        const SizedBox(height: 22),
                        reusableTextFeild("Enter Password", Icons.lock_outline,
                            true, viewModel.passwordCtrl),
                        const SizedBox(height: 22),
                        reusableTextFeild(
                            "Enter Phone Number",
                            Icons.local_phone_outlined,
                            false,
                            viewModel.phoneNoCtrl),
                        const SizedBox(height: 35),
                        ElevatedButton(
                            onPressed: viewModel.signUpNow,
                            child: const Text("Sign Up")),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (viewModel.isBusy)
            const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }

  @override
  SigupScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigupScreenViewModel();
}
