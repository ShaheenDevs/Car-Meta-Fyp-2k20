import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class FindPumpViewModel extends BaseViewModel {
  late final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();
  CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(31.2851861, 71.2492882),
    zoom: 13.4746,
  );
  Position? currentPosition;
  List<Marker> markers = <Marker>[];
  List<Circle> circles = <Circle>[];

  onViewModelReady() async {
    await getCurrentLocation();
    //   try {
    //     setBusy(true);
    //     controller;
    //     markers.clear();
    //     DatabaseReference starCountRef =
    //         FirebaseDatabase.instance.ref(_databaseService.userData!["tracker"]);
    //     starCountRef.onValue.listen((DatabaseEvent event) {
    //       carData = event.snapshot.value as Map?;
    //       // kGooglePlex = CameraPosition(
    //       //   target: LatLng(carData!["Latitude"], carData!["Longitude"]),
    //       //   zoom: 15.4746,
    //       // );
    //       controller.future.then((GoogleMapController controller) {
    //         controller.animateCamera(
    //           CameraUpdate.newLatLng(
    //               LatLng(carData!["Latitude"], carData!["Longitude"])),
    //         );
    //       });
    //       markers.add(Marker(
    //         markerId: const MarkerId("Current location"),
    //         position: LatLng(carData!["Latitude"], carData!["Longitude"]),
    //         infoWindow: const InfoWindow(title: "Current location"),
    //       ));

    //       // controller = Completer<GoogleMapController>();
    //       notifyListeners();
    //       setBusy(false);
    //     });
    //   } catch (e) {
    //     log("=====>$e");
    //   }
  }

  getCurrentLocation() async {
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    currentPosition = position;
    controller.future.then((GoogleMapController controller) {
      controller.animateCamera(
        CameraUpdate.newLatLng(LatLng(position.latitude, position.longitude)),
      );
    });
    markers.add(Marker(
      markerId: const MarkerId("Current location"),
      position: LatLng(position.latitude, position.longitude),
      infoWindow: const InfoWindow(title: "Current location"),
    ));
    circles.add(
      Circle(
        circleId: const CircleId("My Location"),
        center: LatLng(position.latitude, position.longitude),
        radius: 90,
        fillColor: Colors.blue,
        strokeWidth: 5,
        strokeColor: Colors.blue.shade200,
      ),
    );
    notifyListeners();
  }
}
