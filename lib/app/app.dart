import 'package:car_meta/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:car_meta/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:car_meta/ui/views/home/home_view.dart';
import 'package:car_meta/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:car_meta/ui/views/landing_screen/landing_screen_view.dart';
import 'package:car_meta/ui/views/login_screen/login_screen_view.dart';
import 'package:car_meta/ui/views/sigup_screen/sigup_screen_view.dart';
import 'package:car_meta/ui/views/nav_bar_a/nav_bar_a_view.dart';
import 'package:car_meta/ui/views/nav_bar_b/nav_bar_b_view.dart';
import 'package:car_meta/ui/views/nav_bar_c/nav_bar_c_view.dart';
import 'package:car_meta/ui/views/nav_bar_d/nav_bar_d_view.dart';
import 'package:car_meta/ui/views/setting/setting_view.dart';
import 'package:car_meta/ui/views/favourit/favourit_view.dart';
import 'package:car_meta/ui/views/chat/chat_view.dart';
import 'package:car_meta/ui/views/star/star_view.dart';
import 'package:car_meta/ui/views/help_support/help_support_view.dart';
import 'package:car_meta/ui/views/appointment_detail/appointment_detail_view.dart';
import 'package:car_meta/ui/views/order_detail/order_detail_view.dart';
import 'package:car_meta/ui/views/profile/profile_view.dart';
import 'package:car_meta/ui/views/cars/cars_view.dart';
import 'package:car_meta/ui/views/spare_parts/spare_parts_view.dart';
import 'package:car_meta/ui/views/find_pump/find_pump_view.dart';
import 'package:car_meta/ui/views/find_mechanic/find_mechanic_view.dart';
import 'package:car_meta/ui/views/post/post_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LandingScreenView),
    MaterialRoute(page: LoginScreenView),
    MaterialRoute(page: SigupScreenView),
    MaterialRoute(page: NavBarAView),
    MaterialRoute(page: NavBarBView),
    MaterialRoute(page: NavBarCView),
    MaterialRoute(page: NavBarDView),
    MaterialRoute(page: SettingView),
    MaterialRoute(page: FavouritView),
    MaterialRoute(page: ChatView),
    MaterialRoute(page: StarView),
    MaterialRoute(page: HelpSupportView),
    MaterialRoute(page: AppointmentDetailView),
    MaterialRoute(page: OrderDetailView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: CarsView),
    MaterialRoute(page: SparePartsView),
    MaterialRoute(page: FindPumpView),
    MaterialRoute(page: FindMechanicView),
    MaterialRoute(page: PostView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
