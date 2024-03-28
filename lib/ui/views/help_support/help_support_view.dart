import 'package:car_meta/ui/common/reusable_widgets/resuable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'help_support_viewmodel.dart';

class HelpSupportView extends StackedView<HelpSupportViewModel> {
  const HelpSupportView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HelpSupportViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Hellp and Support"),
      ),
      body: Container(
         decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          viewModel.hexStringToColor("5E61F4"),
          viewModel.hexStringToColor("9546C4"),
          viewModel.hexStringToColor("CB2B93"),
        ]),
      ),
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(children: [
          SizedBox(height: 30,),
          const Text(
                        'HAVE ANY QUERY?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                       const Text(
                        ' SEND US A NOTE USING THE FORM BELOW.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                     
           const Text(
                        'Send Us Message',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.w600),
                      ),
                   
                    SizedBox(
                      height: 18,
                    ),
                    reusableTextFeild("Name", Icons.person_outline,
                        false, viewModel.nameCtrl),

                    const SizedBox(
                      height: 22,
                    ),
                    reusableTextFeild("Email", Icons.email_outlined,
                        false, viewModel.emailCtrl),
                    const SizedBox(
                      height: 22,
                    ),
                    reusableTextFeild("Message", Icons.message,
                        true, viewModel.messageCtrl),
                    const SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(onPressed: (){

                    }, child: Text("Send"))
        ],),
      ),
    );
  }

  @override
  HelpSupportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HelpSupportViewModel();
}
