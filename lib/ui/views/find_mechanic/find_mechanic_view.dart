import 'package:car_meta/ui/views/find_mechanic/find_mechanic_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class FindMechanicView extends StackedView<FindMechanicViewModel> {
  const FindMechanicView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FindMechanicViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Find a Mechanic"),
      ),
      body: viewModel.isBusy
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
              zoomControlsEnabled: true,
              mapType: MapType.normal,
              myLocationEnabled: true,
              markers: viewModel.markers.toSet(),
              // circles: viewModel.circles.toSet(),
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
  void onViewModelReady(FindMechanicViewModel viewModel) {
    viewModel.onViewModelReady();
    super.onViewModelReady(viewModel);
  }

  @override
  FindMechanicViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FindMechanicViewModel();
}
