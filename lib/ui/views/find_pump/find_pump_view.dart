import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

import 'find_pump_viewmodel.dart';

class FindPumpView extends StackedView<FindPumpViewModel> {
  const FindPumpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FindPumpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Find Fuel Pump"),
      ),
      body: viewModel.isBusy
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
              zoomControlsEnabled: true,
              mapType: MapType.normal,
              markers: viewModel.markers.toSet(),
              circles: viewModel.circles.toSet(),
              onCameraMove: (position) {},
              initialCameraPosition: viewModel.kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                if (!viewModel.controller.isCompleted) {
                  viewModel.controller.complete(controller);
                }
              },
            ),
    );
  }

  @override
  void onViewModelReady(FindPumpViewModel viewModel) {
    viewModel.onViewModelReady();
    super.onViewModelReady(viewModel);
  }

  @override
  FindPumpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FindPumpViewModel();
}
