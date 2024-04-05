// import 'package:car_meta/ui/common/ui_helpers.dart';
// import 'package:car_meta/ui/widgets/button/button_model.dart';
// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';

// class SocialButton extends StackedView<ButtonModel> {
//   const SocialButton({Key? key}) : super(key: key);

//   @override
//   Widget builder(
//     BuildContext context,
//     ButtonModel viewModel,
//     Widget? child,
//   ) {
//     return Column(
//       children: [
//         const Text(
//           "Or continue with",
//           style: TextStyle(
//               fontSize: 10, fontWeight: FontWeight.w500, color: kcPrimaryColor),
//         ),
//         verticalSpaceSmall,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Card(
//                 child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Image.asset(
//                 google,
//                 height: 30,
//               ),
//             )),
//             Card(
//                 child: Padding(
//               padding: const EdgeInsets.all(3.0),
//               child: Image.asset(
//                 facebook,
//                 height: 40,
//               ),
//             )),
//             Card(
//                 child: Padding(
//               padding: const EdgeInsets.all(6.0),
//               child: Image.asset(
//                 apple,
//                 height: 35,
//               ),
//             )),
//           ],
//         ),
//       ],
//     );
//   }

//   @override
//   ButtonModel viewModelBuilder(BuildContext context) => ButtonModel();
// }
