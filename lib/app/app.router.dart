// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:car_meta/models/chat_member.dart' as _i24;
import 'package:car_meta/models/product.dart' as _i25;
import 'package:car_meta/ui/views/appointment_detail/appointment_detail_view.dart'
    as _i13;
import 'package:car_meta/ui/views/auth/login_screen/login_screen_view.dart'
    as _i5;
import 'package:car_meta/ui/views/auth/sigup_screen/sigup_screen_view.dart'
    as _i6;
import 'package:car_meta/ui/views/auth/startup/startup_view.dart' as _i3;
import 'package:car_meta/ui/views/cars/cars_view.dart' as _i15;
import 'package:car_meta/ui/views/chat/chat_view.dart' as _i9;
import 'package:car_meta/ui/views/chat/chatroom_view.dart' as _i10;
import 'package:car_meta/ui/views/favourit/favourit_view.dart' as _i8;
import 'package:car_meta/ui/views/find_mechanic/find_mechanic_view.dart'
    as _i18;
import 'package:car_meta/ui/views/find_pump/find_pump_view.dart' as _i17;
import 'package:car_meta/ui/views/help_support/help_support_view.dart' as _i12;
import 'package:car_meta/ui/views/home/home_view.dart' as _i2;
import 'package:car_meta/ui/views/landing_screen/landing_screen_view.dart'
    as _i4;
import 'package:car_meta/ui/views/myprofile/myprofile_view.dart' as _i20;
import 'package:car_meta/ui/views/order_detail/order_detail_view.dart' as _i14;
import 'package:car_meta/ui/views/other_profile/other_profile_view.dart'
    as _i22;
import 'package:car_meta/ui/views/post/post_view.dart' as _i19;
import 'package:car_meta/ui/views/post_details/post_details_view.dart' as _i21;
import 'package:car_meta/ui/views/setting/setting_view.dart' as _i7;
import 'package:car_meta/ui/views/spare_parts/spare_parts_view.dart' as _i16;
import 'package:car_meta/ui/views/star/star_view.dart' as _i11;
import 'package:flutter/material.dart' as _i23;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i26;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const landingScreenView = '/landing-screen-view';

  static const loginScreenView = '/login-screen-view';

  static const sigupScreenView = '/sigup-screen-view';

  static const settingView = '/setting-view';

  static const favouritView = '/favourit-view';

  static const chatView = '/chat-view';

  static const chatRoomView = '/chat-room-view';

  static const starView = '/star-view';

  static const helpSupportView = '/help-support-view';

  static const appointmentDetailView = '/appointment-detail-view';

  static const orderDetailView = '/order-detail-view';

  static const carsView = '/cars-view';

  static const sparePartsView = '/spare-parts-view';

  static const findPumpView = '/find-pump-view';

  static const findMechanicView = '/find-mechanic-view';

  static const postView = '/post-view';

  static const myprofileView = '/myprofile-view';

  static const postDetailsView = '/post-details-view';

  static const otherProfileView = '/other-profile-view';

  static const all = <String>{
    homeView,
    startupView,
    landingScreenView,
    loginScreenView,
    sigupScreenView,
    settingView,
    favouritView,
    chatView,
    chatRoomView,
    starView,
    helpSupportView,
    appointmentDetailView,
    orderDetailView,
    carsView,
    sparePartsView,
    findPumpView,
    findMechanicView,
    postView,
    myprofileView,
    postDetailsView,
    otherProfileView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.landingScreenView,
      page: _i4.LandingScreenView,
    ),
    _i1.RouteDef(
      Routes.loginScreenView,
      page: _i5.LoginScreenView,
    ),
    _i1.RouteDef(
      Routes.sigupScreenView,
      page: _i6.SigupScreenView,
    ),
    _i1.RouteDef(
      Routes.settingView,
      page: _i7.SettingView,
    ),
    _i1.RouteDef(
      Routes.favouritView,
      page: _i8.FavouritView,
    ),
    _i1.RouteDef(
      Routes.chatView,
      page: _i9.ChatView,
    ),
    _i1.RouteDef(
      Routes.chatRoomView,
      page: _i10.ChatRoomView,
    ),
    _i1.RouteDef(
      Routes.starView,
      page: _i11.StarView,
    ),
    _i1.RouteDef(
      Routes.helpSupportView,
      page: _i12.HelpSupportView,
    ),
    _i1.RouteDef(
      Routes.appointmentDetailView,
      page: _i13.AppointmentDetailView,
    ),
    _i1.RouteDef(
      Routes.orderDetailView,
      page: _i14.OrderDetailView,
    ),
    _i1.RouteDef(
      Routes.carsView,
      page: _i15.CarsView,
    ),
    _i1.RouteDef(
      Routes.sparePartsView,
      page: _i16.SparePartsView,
    ),
    _i1.RouteDef(
      Routes.findPumpView,
      page: _i17.FindPumpView,
    ),
    _i1.RouteDef(
      Routes.findMechanicView,
      page: _i18.FindMechanicView,
    ),
    _i1.RouteDef(
      Routes.postView,
      page: _i19.PostView,
    ),
    _i1.RouteDef(
      Routes.myprofileView,
      page: _i20.MyprofileView,
    ),
    _i1.RouteDef(
      Routes.postDetailsView,
      page: _i21.PostDetailsView,
    ),
    _i1.RouteDef(
      Routes.otherProfileView,
      page: _i22.OtherProfileView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LandingScreenView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LandingScreenView(),
        settings: data,
      );
    },
    _i5.LoginScreenView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.LoginScreenView(),
        settings: data,
      );
    },
    _i6.SigupScreenView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.SigupScreenView(),
        settings: data,
      );
    },
    _i7.SettingView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.SettingView(),
        settings: data,
      );
    },
    _i8.FavouritView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.FavouritView(),
        settings: data,
      );
    },
    _i9.ChatView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.ChatView(),
        settings: data,
      );
    },
    _i10.ChatRoomView: (data) {
      final args = data.getArgs<ChatRoomViewArguments>(nullOk: false);
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => _i10.ChatRoomView(
            key: args.key,
            senderMember: args.senderMember,
            receiverMember: args.receiverMember,
            smsText: args.smsText),
        settings: data,
      );
    },
    _i11.StarView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.StarView(),
        settings: data,
      );
    },
    _i12.HelpSupportView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.HelpSupportView(),
        settings: data,
      );
    },
    _i13.AppointmentDetailView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.AppointmentDetailView(),
        settings: data,
      );
    },
    _i14.OrderDetailView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.OrderDetailView(),
        settings: data,
      );
    },
    _i15.CarsView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.CarsView(),
        settings: data,
      );
    },
    _i16.SparePartsView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.SparePartsView(),
        settings: data,
      );
    },
    _i17.FindPumpView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.FindPumpView(),
        settings: data,
      );
    },
    _i18.FindMechanicView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.FindMechanicView(),
        settings: data,
      );
    },
    _i19.PostView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.PostView(),
        settings: data,
      );
    },
    _i20.MyprofileView: (data) {
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.MyprofileView(),
        settings: data,
      );
    },
    _i21.PostDetailsView: (data) {
      final args = data.getArgs<PostDetailsViewArguments>(nullOk: false);
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i21.PostDetailsView(key: args.key, product: args.product),
        settings: data,
      );
    },
    _i22.OtherProfileView: (data) {
      final args = data.getArgs<OtherProfileViewArguments>(nullOk: false);
      return _i23.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i22.OtherProfileView(key: args.key, uID: args.uID),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ChatRoomViewArguments {
  const ChatRoomViewArguments({
    this.key,
    required this.senderMember,
    required this.receiverMember,
    this.smsText,
  });

  final _i23.Key? key;

  final _i24.ChatMember senderMember;

  final _i24.ChatMember receiverMember;

  final String? smsText;

  @override
  String toString() {
    return '{"key": "$key", "senderMember": "$senderMember", "receiverMember": "$receiverMember", "smsText": "$smsText"}';
  }

  @override
  bool operator ==(covariant ChatRoomViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.senderMember == senderMember &&
        other.receiverMember == receiverMember &&
        other.smsText == smsText;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        senderMember.hashCode ^
        receiverMember.hashCode ^
        smsText.hashCode;
  }
}

class PostDetailsViewArguments {
  const PostDetailsViewArguments({
    this.key,
    required this.product,
  });

  final _i23.Key? key;

  final _i25.ProductModel product;

  @override
  String toString() {
    return '{"key": "$key", "product": "$product"}';
  }

  @override
  bool operator ==(covariant PostDetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.product == product;
  }

  @override
  int get hashCode {
    return key.hashCode ^ product.hashCode;
  }
}

class OtherProfileViewArguments {
  const OtherProfileViewArguments({
    this.key,
    required this.uID,
  });

  final _i23.Key? key;

  final String uID;

  @override
  String toString() {
    return '{"key": "$key", "uID": "$uID"}';
  }

  @override
  bool operator ==(covariant OtherProfileViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.uID == uID;
  }

  @override
  int get hashCode {
    return key.hashCode ^ uID.hashCode;
  }
}

extension NavigatorStateExtension on _i26.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLandingScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.landingScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSigupScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.sigupScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSettingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.settingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFavouritView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.favouritView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChatView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.chatView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChatRoomView({
    _i23.Key? key,
    required _i24.ChatMember senderMember,
    required _i24.ChatMember receiverMember,
    String? smsText,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.chatRoomView,
        arguments: ChatRoomViewArguments(
            key: key,
            senderMember: senderMember,
            receiverMember: receiverMember,
            smsText: smsText),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStarView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.starView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHelpSupportView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.helpSupportView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAppointmentDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.appointmentDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOrderDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.orderDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCarsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.carsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSparePartsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.sparePartsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFindPumpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.findPumpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToFindMechanicView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.findMechanicView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPostView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.postView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMyprofileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.myprofileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPostDetailsView({
    _i23.Key? key,
    required _i25.ProductModel product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.postDetailsView,
        arguments: PostDetailsViewArguments(key: key, product: product),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOtherProfileView({
    _i23.Key? key,
    required String uID,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.otherProfileView,
        arguments: OtherProfileViewArguments(key: key, uID: uID),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLandingScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.landingScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSigupScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.sigupScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSettingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.settingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFavouritView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.favouritView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChatView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.chatView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChatRoomView({
    _i23.Key? key,
    required _i24.ChatMember senderMember,
    required _i24.ChatMember receiverMember,
    String? smsText,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.chatRoomView,
        arguments: ChatRoomViewArguments(
            key: key,
            senderMember: senderMember,
            receiverMember: receiverMember,
            smsText: smsText),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStarView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.starView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHelpSupportView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.helpSupportView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAppointmentDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.appointmentDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOrderDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.orderDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCarsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.carsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSparePartsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.sparePartsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFindPumpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.findPumpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithFindMechanicView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.findMechanicView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPostView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.postView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMyprofileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.myprofileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPostDetailsView({
    _i23.Key? key,
    required _i25.ProductModel product,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.postDetailsView,
        arguments: PostDetailsViewArguments(key: key, product: product),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOtherProfileView({
    _i23.Key? key,
    required String uID,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.otherProfileView,
        arguments: OtherProfileViewArguments(key: key, uID: uID),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
