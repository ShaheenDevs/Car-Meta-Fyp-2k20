import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'appointment_detail_viewmodel.dart';

class AppointmentDetailView extends StackedView<AppointmentDetailViewModel> {
  const AppointmentDetailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppointmentDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Appointment Details"),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: ListView.builder(
          itemCount: 14, // Specifies the number of items in the list
          itemBuilder: (context, index) {
            return Padding( padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
              
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.40),
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  title: Text("Seller Name"), // Title of the ListTile
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Appointment details"),

                      Text("Time "),
                    ],
                  ), // Subtitle of the ListTile
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  AppointmentDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppointmentDetailViewModel();
}
