import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/models/chat_member.dart';
import 'package:car_meta/models/product.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/product_service.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked.dart';

class PostDetailsViewModel extends ReactiveViewModel {
  final _navigationService = locator<NavigationService>();
  // final _bottomSheetService = locator<BottomSheetService>();
  final _authService = locator<AuthService>();
  final _productService = locator<ProductService>();
  AuthModel? get userData => _authService.userData;

  onViewModelReady() async {}

  // void showDialog() {
  //   _dialogService.showCustomDialog(
  //     variant: DialogType.infoAlert,
  //     title: 'Stacked Rocks!',
  //     description: 'Give stacked $_counter stars on Github',
  //   );
  // }

  // void showBottomSheet() {
  //   _bottomSheetService.showCustomSheet(
  //     variant: BottomSheetType.notice,
  //     title: ksPostDetailsBottomSheetTitle,
  //     description: ksPostDetailsBottomSheetDescription,
  //   );
  // }
  back() {
    _navigationService.back();
  }

  deletePost(id) async {
    await _productService.deletePost(id);
    back();
  }

  navigateToChatRoomView(ProductModel e) {
    _navigationService.navigateToChatRoomView(
        smsText: e.type == "Spare Parts"
            ? "Hey ${e.saller?.name ?? ""}, I came across your ad for the ${e.title} Model:${e.model} on Car Meta app and I'm interested in learning more. Could you provide me with some additional details about the car, such as its condition, mileage, and any recent maintenance history? Also, I'd like to schedule a time for a viewing and possibly a test drive if the car meets my criteria. Let me know your availability. Thanks!"
            : "Hey ${e.saller?.name ?? ""}, I saw your spare parts listing on Car Meta app. I'm in need of ${e.title} for my ${e.subType} ${e.model}. Could you please provide more details about its compatibility and condition? Also, let me know if it's available and how we can proceed with the purchase. Thank ",
        senderMember: ChatMember(
            userId: userData?.uID,
            read: true,
            displayName: userData?.userName,
            profile: userData?.profile),
        receiverMember: ChatMember(
          userId: e.saller?.uId,
          read: true,
          displayName: e.saller?.name,
          profile: e.saller?.profile,
        ));
  }
}
