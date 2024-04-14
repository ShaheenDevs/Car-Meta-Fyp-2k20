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

class FindPumpViewModel extends BaseViewModel {
  final _productService = locator<ProductService>();
  final _imageServices = locator<ImageServices>();
  final _authService = locator<AuthService>();
  final _navigationService = locator<NavigationService>();

  AuthModel? get userData => _authService.userData;
  List<PetrolPump> get petrolPumps => _productService.allPetrolPump;

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
    final Uint8List petrolPumpUint8List = await _imageServices
        .getBytesFromAsset(path: petrolPumpIcon, width: 150);
    BitmapDescriptor petrolPumpBitmap =
        BitmapDescriptor.fromBytes(petrolPumpUint8List);
    // BitmapDescriptor carMechanicBitmap = await BitmapDescriptor.fromAssetImage(
    //     const ImageConfiguration(), carMechanicIcon,
    //     mipmaps: false);
    for (var e in petrolPumps) {
      markers.add(
        Marker(
          icon: petrolPumpBitmap,
          markerId: MarkerId(e.name ?? ""),
          position:
              LatLng(e.position?.latitude ?? 0, e.position?.longitude ?? 0),
          onTap: () {
            navigateToChatRoomView(e);
          },
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

  navigateToChatRoomView(PetrolPump e) {
    _navigationService.navigateToChatRoomView(
        smsText:
            "Hey ${e.name ?? ""}, I hope you're having a good day. My car's running low on fuel and I could use a top-up. Are you guys open for refueling services today? Let me know. Thanks!",
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
