import 'dart:async';
import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/models/chat_member.dart';
import 'package:car_meta/models/petrol_pump.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/image_service.dart';
import 'package:car_meta/services/product_service.dart';
import 'package:car_meta/ui/common/app_image.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:stacked_services/stacked_services.dart';

class FindMechanicViewModel extends BaseViewModel {
  final _productService = locator<ProductService>();
  final _imageServices = locator<ImageServices>();
  final _authService = locator<AuthService>();
  final _navigationService = locator<NavigationService>();

  AuthModel? get userData => _authService.userData;
  List<PetrolPump> get mechanics => _productService.allPetrolPump;

  late final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();
  CameraPosition kGooglePlex = const CameraPosition(
    target: LatLng(31.2851861, 71.2492882),
    zoom: 9.4746,
  );
  Position? currentPosition;
  List<Marker> markers = <Marker>[];
  // List<Circle> circles = <Circle>[];

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
    final Uint8List mechanicUint8List = await _imageServices.getBytesFromAsset(
        path: carMechanicIcon, width: 180);
    BitmapDescriptor mechanicBitmap =
        BitmapDescriptor.fromBytes(mechanicUint8List);
    // BitmapDescriptor carMechanicBitmap = await BitmapDescriptor.fromAssetImage(
    //     const ImageConfiguration(), carMechanicIcon,
    //     mipmaps: false);
    for (var e in mechanics) {
      markers.add(
        Marker(
          icon: mechanicBitmap,
          markerId: MarkerId(e.name ?? ""),
          onTap: () {
            navigateToOtherProfileView(e);
          },
          position:
              LatLng(e.position?.latitude ?? 0, e.position?.longitude ?? 0),
          infoWindow: InfoWindow(
            title: e.phone ?? "",
          ),
        ),
      );
    }
    // circles.add(
    //   Circle(
    //     circleId: const CircleId("My Location"),
    //     center: LatLng(position.latitude, position.longitude),
    //     radius: 90,
    //     fillColor: Colors.blue,
    //     strokeWidth: 5,
    //     strokeColor: Colors.blue.shade200,
    //   ),
    // );
    notifyListeners();
  }

  navigateToOtherProfileView(PetrolPump e) {
    _navigationService.navigateToOtherProfileView(uID: e.id ?? "");
  }

  navigateToChatRoomView(PetrolPump e) {
    _navigationService.navigateToChatRoomView(
        smsText:
            "Hey ${e.name ?? ""}, hope you're doing well. My car is acting up again and I think it needs some professional attention. Are you available for a service appointment sometime? Let me know your availability. Thanks!",
        senderMember: ChatMember(
            userId: userData?.uID,
            read: true,
            displayName: userData?.userName,
            profile: userData?.profile),
        receiverMember: ChatMember(
          userId: e.id,
          read: true,
          displayName: e.name,
          profile: e.profile,
        ));
  }
}
