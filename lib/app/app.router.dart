// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:car_meta/ui/views/appointment_detail/appointment_detail_view.dart'
    as _i16;
import 'package:car_meta/ui/views/cars/cars_view.dart' as _i19;
import 'package:car_meta/ui/views/chat/chat_view.dart' as _i13;
import 'package:car_meta/ui/views/favourit/favourit_view.dart' as _i12;
import 'package:car_meta/ui/views/find_mechanic/find_mechanic_view.dart'
    as _i22;
import 'package:car_meta/ui/views/find_pump/find_pump_view.dart' as _i21;
import 'package:car_meta/ui/views/help_support/help_support_view.dart' as _i15;
import 'package:car_meta/ui/views/home/home_view.dart' as _i2;
import 'package:car_meta/ui/views/landing_screen/landing_screen_view.dart'
    as _i4;
import 'package:car_meta/ui/views/login_screen/login_screen_view.dart' as _i5;
import 'package:car_meta/ui/views/myprofile/myprofile_view.dart' as _i24;
import 'package:car_meta/ui/views/nav_bar_a/nav_bar_a_view.dart' as _i7;
import 'package:car_meta/ui/views/nav_bar_b/nav_bar_b_view.dart' as _i8;
import 'package:car_meta/ui/views/nav_bar_c/nav_bar_c_view.dart' as _i9;
import 'package:car_meta/ui/views/nav_bar_d/nav_bar_d_view.dart' as _i10;
import 'package:car_meta/ui/views/order_detail/order_detail_view.dart' as _i17;
import 'package:car_meta/ui/views/post/post_view.dart' as _i23;
import 'package:car_meta/ui/views/profile/profile_view.dart' as _i18;
import 'package:car_meta/ui/views/setting/setting_view.dart' as _i11;
import 'package:car_meta/ui/views/sigup_screen/sigup_screen_view.dart' as _i6;
import 'package:car_meta/ui/views/spare_parts/spare_parts_view.dart' as _i20;
import 'package:car_meta/ui/views/star/star_view.dart' as _i14;
import 'package:car_meta/ui/views/startup/startup_view.dart' as _i3;
import 'package:flutter/material.dart' as _i25;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i26;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const landingScreenView = '/landing-screen-view';

  static const loginScreenView = '/login-screen-view';

  static const sigupScreenView = '/sigup-screen-view';

  static const navBarAView = '/nav-bar-aView';

  static const navBarBView = '/nav-bar-bView';

  static const navBarCView = '/nav-bar-cView';

  static const navBarDView = '/nav-bar-dView';

  static const settingView = '/setting-view';

  static const favouritView = '/favourit-view';

  static const chatView = '/chat-view';

  static const starView = '/star-view';

  static const helpSupportView = '/help-support-view';

  static const appointmentDetailView = '/appointment-detail-view';

  static const orderDetailView = '/order-detail-view';

  static const profileView = '/profile-view';

  static const carsView = '/cars-view';

  static const sparePartsView = '/spare-parts-view';

  static const findPumpView = '/find-pump-view';

  static const findMechanicView = '/find-mechanic-view';

  static const postView = '/post-view';

  static const myprofileView = '/myprofile-view';

  static const all = <String>{
    homeView,
    startupView,
    landingScreenView,
    loginScreenView,
    sigupScreenView,
    navBarAView,
    navBarBView,
    navBarCView,
    navBarDView,
    settingView,
    favouritView,
    chatView,
    starView,
    helpSupportView,
    appointmentDetailView,
    orderDetailView,
    profileView,
    carsView,
    sparePartsView,
    findPumpView,
    findMechanicView,
    postView,
    myprofileView,
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
      Routes.navBarAView,
      page: _i7.NavBarAView,
    ),
    _i1.RouteDef(
      Routes.navBarBView,
      page: _i8.NavBarBView,
    ),
    _i1.RouteDef(
      Routes.navBarCView,
      page: _i9.NavBarCView,
    ),
    _i1.RouteDef(
      Routes.navBarDView,
      page: _i10.NavBarDView,
    ),
    _i1.RouteDef(
      Routes.settingView,
      page: _i11.SettingView,
    ),
    _i1.RouteDef(
      Routes.favouritView,
      page: _i12.FavouritView,
    ),
    _i1.RouteDef(
      Routes.chatView,
      page: _i13.ChatView,
    ),
    _i1.RouteDef(
      Routes.starView,
      page: _i14.StarView,
    ),
    _i1.RouteDef(
      Routes.helpSupportView,
      page: _i15.HelpSupportView,
    ),
    _i1.RouteDef(
      Routes.appointmentDetailView,
      page: _i16.AppointmentDetailView,
    ),
    _i1.RouteDef(
      Routes.orderDetailView,
      page: _i17.OrderDetailView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i18.ProfileView,
    ),
    _i1.RouteDef(
      Routes.carsView,
      page: _i19.CarsView,
    ),
    _i1.RouteDef(
      Routes.sparePartsView,
      page: _i20.SparePartsView,
    ),
    _i1.RouteDef(
      Routes.findPumpView,
      page: _i21.FindPumpView,
    ),
    _i1.RouteDef(
      Routes.findMechanicView,
      page: _i22.FindMechanicView,
    ),
    _i1.RouteDef(
      Routes.postView,
      page: _i23.PostView,
    ),
    _i1.RouteDef(
      Routes.myprofileView,
      page: _i24.MyprofileView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LandingScreenView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LandingScreenView(),
        settings: data,
      );
    },
    _i5.LoginScreenView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.LoginScreenView(),
        settings: data,
      );
    },
    _i6.SigupScreenView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.SigupScreenView(),
        settings: data,
      );
    },
    _i7.NavBarAView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.NavBarAView(),
        settings: data,
      );
    },
    _i8.NavBarBView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.NavBarBView(),
        settings: data,
      );
    },
    _i9.NavBarCView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.NavBarCView(),
        settings: data,
      );
    },
    _i10.NavBarDView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.NavBarDView(),
        settings: data,
      );
    },
    _i11.SettingView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.SettingView(),
        settings: data,
      );
    },
    _i12.FavouritView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.FavouritView(),
        settings: data,
      );
    },
    _i13.ChatView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.ChatView(),
        settings: data,
      );
    },
    _i14.StarView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.StarView(),
        settings: data,
      );
    },
    _i15.HelpSupportView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.HelpSupportView(),
        settings: data,
      );
    },
    _i16.AppointmentDetailView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i16.AppointmentDetailView(),
        settings: data,
      );
    },
    _i17.OrderDetailView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i17.OrderDetailView(),
        settings: data,
      );
    },
    _i18.ProfileView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i18.ProfileView(),
        settings: data,
      );
    },
    _i19.CarsView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i19.CarsView(),
        settings: data,
      );
    },
    _i20.SparePartsView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.SparePartsView(),
        settings: data,
      );
    },
    _i21.FindPumpView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.FindPumpView(),
        settings: data,
      );
    },
    _i22.FindMechanicView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i22.FindMechanicView(),
        settings: data,
      );
    },
    _i23.PostView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i23.PostView(),
        settings: data,
      );
    },
    _i24.MyprofileView: (data) {
      return _i25.MaterialPageRoute<dynamic>(
        builder: (context) => const _i24.MyprofileView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
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

  Future<dynamic> navigateToNavBarAView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.navBarAView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNavBarBView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.navBarBView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNavBarCView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.navBarCView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNavBarDView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.navBarDView,
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

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
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

  Future<dynamic> replaceWithNavBarAView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.navBarAView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNavBarBView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.navBarBView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNavBarCView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.navBarCView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNavBarDView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.navBarDView,
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

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
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
}
