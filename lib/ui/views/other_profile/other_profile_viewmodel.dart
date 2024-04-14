import 'package:car_meta/app/app.locator.dart';
import 'package:car_meta/app/app.router.dart';
import 'package:car_meta/models/auth.dart';
import 'package:car_meta/models/chat_member.dart';
import 'package:car_meta/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OtherProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  AuthModel? get userData => _authService.userData;
  AuthModel? otherUserData;

  onViewModelReady(String uID) async {
    setBusy(true);
    otherUserData = await _authService.getOtherUserData(uID);
    setBusy(false);
  }

  back() {
    _navigationService.back();
  }

  navigateToChatRoomView() {
    _navigationService.navigateToChatRoomView(
        smsText:
            "Hey ${otherUserData?.userName ?? ""}, hope you're doing well. My car is acting up again and I think it needs some professional attention. Are you available for a service appointment sometime? Let me know your availability. Thanks!",
        senderMember: ChatMember(
            userId: userData?.uID,
            read: true,
            displayName: userData?.userName,
            profile: userData?.profile),
        receiverMember: ChatMember(
          userId: otherUserData?.uID,
          read: true,
          displayName: otherUserData?.userName,
          profile: otherUserData?.profile,
        ));
  }
}
