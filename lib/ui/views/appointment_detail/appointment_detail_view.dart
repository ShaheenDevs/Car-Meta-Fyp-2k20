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
      ),
    );
  }

  @override
  AppointmentDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppointmentDetailViewModel();
}
