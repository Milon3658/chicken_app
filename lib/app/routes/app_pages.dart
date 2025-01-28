import 'package:get/get.dart';

import '../modules/Adds/bindings/adds_binding.dart';
import '../modules/Adds/views/adds_view.dart';
import '../modules/Buy/bindings/buy_binding.dart';
import '../modules/Buy/views/buy_view.dart';
import '../modules/EditAdds/bindings/edit_adds_binding.dart';
import '../modules/EditAdds/views/edit_adds_view.dart';
import '../modules/Homepage/bindings/homepage_binding.dart';
import '../modules/Homepage/views/homepage_view.dart';
import '../modules/MyTotalAdds/bindings/my_total_adds_binding.dart';
import '../modules/MyTotalAdds/views/my_total_adds_view.dart';
import '../modules/Product_Details/bindings/product_details_binding.dart';
import '../modules/Product_Details/views/product_details_view.dart';
import '../modules/account/bindings/account_binding.dart';
import '../modules/account/views/account_view.dart';
import '../modules/chicken_monitor/bindings/chicken_monitor_binding.dart';
import '../modules/chicken_monitor/views/chicken_monitor_view.dart';
import '../modules/delete_adds/bindings/delete_adds_binding.dart';
import '../modules/delete_adds/views/delete_adds_view.dart';
import '../modules/mainpage/bindings/mainpage_binding.dart';
import '../modules/mainpage/views/mainpage_view.dart';
import '../modules/sellPage/bindings/sell_page_binding.dart';
import '../modules/sellPage/views/sell_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOMEPAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => const HomepageView(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS,
      page: () => const ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: _Paths.MAINPAGE,
      page: () => const MainpageView(),
      binding: MainpageBinding(),
    ),
    GetPage(
      name: _Paths.SELL_PAGE,
      page: () => const SellPageView(),
      binding: SellPageBinding(),
    ),
    GetPage(
      name: _Paths.ADDS,
      page: () => const AddsView(),
      binding: AddsBinding(),
    ),
    GetPage(
      name: _Paths.BUY,
      page: () => const BuyView(),
      binding: BuyBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => const AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.MY_TOTAL_ADDS,
      page: () => const MyTotalAddsView(),
      binding: MyTotalAddsBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_ADDS,
      page: () => const EditAddsView(),
      binding: EditAddsBinding(),
    ),
    GetPage(
      name: _Paths.DELETE_ADDS,
      page: () => const DeleteAddsView(),
      binding: DeleteAddsBinding(),
    ),
    GetPage(
      name: _Paths.CHICKEN_MONITOR,
      page: () => const ChickenMonitorView(),
      binding: ChickenMonitorBinding(),
    ),
  ];
}
