import 'package:car_meta/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:car_meta/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:car_meta/ui/views/home/home_view.dart';
import 'package:car_meta/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:car_meta/ui/views/landing_screen/landing_screen_view.dart';
import 'package:car_meta/ui/views/login_screen/login_screen_view.dart';
import 'package:car_meta/ui/views/sigup_screen/sigup_screen_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LandingScreenView),
    MaterialRoute(page: LoginScreenView),
    MaterialRoute(page: SigupScreenView),
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
