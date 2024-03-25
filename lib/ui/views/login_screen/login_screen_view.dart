import 'package:car_meta/ui/common/reusable_widgets/resuable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_screen_viewmodel.dart';

class LoginScreenView extends StackedView<LoginScreenViewModel> {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(75)),
              ),
              child: const Image(
                image: AssetImage('assets/logo.png'),
                height: 2,
                width: 2,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 35, right: 35, top: 30),
              child: Column(
                children: [
                  reusableTextFeild("Enter UserName", Icons.person_outline,
                      false, viewModel.userNameCtrl),
                  const SizedBox(
                    height: 25,
                  ),
                  reusableTextFeild("Enter Password", Icons.lock_outline, true,
                      viewModel.passwordCtrl),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 13,
                              color: Color.fromARGB(255, 247, 246, 246),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 50,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 0.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 252, 168, 58),
                          Color.fromARGB(255, 253, 110, 110),
                        ])),
                    child: TextButton(
                      onPressed: () async {
                        viewModel.navigateToLandingScreen();
                        // if (await loginController.signInWithEmail()) {
                        //   Get.to(const MyHomePage());
                        // }
                      },
                      child: const Text(
                        'LOG IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 65,
                  ),
                  // signUpOption(context),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [

                  //  Text(
                  //     'Sign in',
                  //     style: TextStyle(
                  //       fontSize: 27,
                  //       fontWeight: FontWeight.w700,
                  //     ),
                  //   ),
                  // CircleAvatar(
                  //   radius: 30,
                  //   backgroundColor: Colors.black,
                  //   child: IconButton(
                  //     onPressed: () {},
                  //     icon: Icon(Icons.arrow_forward_ios_rounded),
                  //   ),
                  // )
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
                  //           Navigator.pushNamed(context, 'register');
                  //         },
                  //         child: Text(
                  //           'Sign Up',
                  //           style: TextStyle(
                  //             decoration: TextDecoration.underline,
                  //             fontSize: 18,
                  //             color: Colors.blue[500],
                  //           ),
                  //         )),
                  //   ],
                  // ),
                ],
              ),
            ),
            Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            viewModel.navigateToSignup();
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => MyRegister()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    ),
    SizedBox(height: 50,),
  
          ],
        ),
      ),
    );
    // Scaffold(
    //   backgroundColor: Theme.of(context).colorScheme.background,
    //   body: Container(
    //     padding: const EdgeInsets.only(left: 25.0, right: 25.0),
    //   ),
    // );
  }

  @override
  LoginScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginScreenViewModel();
}
