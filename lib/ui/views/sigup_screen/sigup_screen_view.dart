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
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            // Container(
            //   padding: const EdgeInsets.only(left: 35, top: 30),
            //   child: const Text(
            //     'Create\nAccount',
            //     style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 33,
            //         fontWeight: FontWeight.w600),
            //   ),
            // ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
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
                    SizedBox(
                      height: 18,
                    ),
                    reusableTextFeild("Enter UserName", Icons.person_outline,
                        false, viewModel.userNameCtrl),

                    const SizedBox(
                      height: 22,
                    ),
                    reusableTextFeild("Enter Email id", Icons.email_outlined,
                        false, viewModel.emailCtrl),
                    const SizedBox(
                      height: 22,
                    ),
                    reusableTextFeild("Enter Password", Icons.lock_outline,
                        true, viewModel.passwordCtrl),
                    const SizedBox(
                      height: 22,
                    ),
                    reusableTextFeild(
                        "Enter Phone Number",
                        Icons.local_phone_outlined,
                        false,
                        viewModel.phoneNoCtrl),
                    const SizedBox(
                      height: 35,
                    ),
                    // Obx(() => loginController.isLoading.value
                    //     ? const CircularProgressIndicator()
                    //     :
                    ElevatedButton(
                        onPressed: () async {
                          // if (await loginController.creatAndUploadUser()) {
                          //   Get.back();
                          // }
                        },
                        child: const Text("Sign Up")),

                    // const Text('Or create account using social media'),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     IconButton(
                    //         onPressed: () {},
                    //         icon: const Icon(Icons.facebook_outlined)),
                    //     IconButton(
                    //         onPressed: () {},
                    //         icon: const Icon(Icons.mail_outline_outlined)),
                    //     IconButton(
                    //         onPressed: () {},
                    //         icon: const Icon(Icons.facebook_outlined)),
                    //   ],
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text(
                    //       'Sign in',
                    //       style: TextStyle(
                    //         fontSize: 27,
                    //         fontWeight: FontWeight.w700,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //     CircleAvatar(
                    //       radius: 30,
                    //       backgroundColor: Colors.black,
                    //       child: IconButton(
                    //         onPressed: () {},
                    //         icon: Icon(Icons.arrow_forward_ios_rounded),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 40,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     TextButton(
                    //         onPressed: () {
                    //           Navigator.pushNamed(context, 'login');
                    //         },
                    //         child: Text(
                    //           'Sign Up',
                    //           style: TextStyle(
                    //             decoration: TextDecoration.underline,
                    //             fontSize: 18,
                    //             color: Colors.white,
                    //           ),
                    //         )),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // return Scaffold(
    //   backgroundColor: Theme.of(context).colorScheme.background,
    //   body: Container(
    //     padding: const EdgeInsets.only(left: 25.0, right: 25.0),
    //   ),
    // );
  }

  @override
  SigupScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigupScreenViewModel();
}
