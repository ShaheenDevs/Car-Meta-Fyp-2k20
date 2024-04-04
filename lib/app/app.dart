import 'package:car_meta/services/auth_service.dart';
import 'package:car_meta/services/location_service.dart';
import 'package:car_meta/services/picker_service.dart';
import 'package:car_meta/services/product_service.dart';
import 'package:car_meta/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:car_meta/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:car_meta/ui/views/home/home_view.dart';
import 'package:car_meta/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:car_meta/ui/views/landing_screen/landing_screen_view.dart';
import 'package:car_meta/ui/views/login_screen/login_screen_view.dart';
import 'package:car_meta/ui/views/sigup_screen/sigup_screen_view.dart';

import 'package:car_meta/ui/views/setting/setting_view.dart';
import 'package:car_meta/ui/views/favourit/favourit_view.dart';
import 'package:car_meta/ui/views/chat/chat_view.dart';
import 'package:car_meta/ui/views/star/star_view.dart';
import 'package:car_meta/ui/views/help_support/help_support_view.dart';
import 'package:car_meta/ui/views/appointment_detail/appointment_detail_view.dart';
import 'package:car_meta/ui/views/order_detail/order_detail_view.dart';

import 'package:car_meta/ui/views/cars/cars_view.dart';
import 'package:car_meta/ui/views/spare_parts/spare_parts_view.dart';
import 'package:car_meta/ui/views/find_pump/find_pump_view.dart';
import 'package:car_meta/ui/views/find_mechanic/find_mechanic_view.dart';
import 'package:car_meta/ui/views/post/post_view.dart';
import 'package:car_meta/ui/views/myprofile/myprofile_view.dart';
import 'package:car_meta/ui/views/product_detail/product_detail_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LandingScreenView),
    MaterialRoute(page: LoginScreenView),
    MaterialRoute(page: SigupScreenView),

    MaterialRoute(page: SettingView),
    MaterialRoute(page: FavouritView),
    MaterialRoute(page: ChatView),
    MaterialRoute(page: StarView),
    MaterialRoute(page: HelpSupportView),
    MaterialRoute(page: AppointmentDetailView),
    MaterialRoute(page: OrderDetailView),

    MaterialRoute(page: CarsView),
    MaterialRoute(page: SparePartsView),
    MaterialRoute(page: FindPumpView),
    MaterialRoute(page: FindMechanicView),
    MaterialRoute(page: PostView),
    MaterialRoute(page: MyprofileView),
    MaterialRoute(page: ProductDetailView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: PickerService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: ProductService),
    LazySingleton(classType: LocationService),
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
