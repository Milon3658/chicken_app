import 'package:get/get.dart';

import '../modules/Adds/bindings/adds_binding.dart';
import '../modules/Adds/views/adds_view.dart';
import '../modules/Buy/bindings/buy_binding.dart';
import '../modules/Buy/views/buy_view.dart';
import '../modules/Chat/bindings/chat_binding.dart';
import '../modules/Chat/views/chat_view.dart';
import '../modules/Deal/bindings/deal_binding.dart';
import '../modules/Deal/views/deal_view.dart';
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
import '../modules/create_input/bindings/create_input_binding.dart';
import '../modules/create_input/views/create_input_view.dart';
import '../modules/delete_adds/bindings/delete_adds_binding.dart';
import '../modules/delete_adds/views/delete_adds_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login_form/bindings/login_form_binding.dart';
import '../modules/login_form/views/login_form_view.dart';
import '../modules/mainpage/bindings/mainpage_binding.dart';
import '../modules/mainpage/views/mainpage_view.dart';
import '../modules/membership/bindings/membership_binding.dart';
import '../modules/membership/views/membership_view.dart';
import '../modules/membership_details/bindings/membership_details_binding.dart';
import '../modules/membership_details/views/membership_details_view.dart';
import '../modules/my_profile/bindings/my_profile_binding.dart';
import '../modules/my_profile/views/my_profile_view.dart';
import '../modules/otp/bindings/otp_binding.dart';
import '../modules/otp/views/otp_view.dart';
import '../modules/payment/bindings/payment_binding.dart';
import '../modules/payment/views/payment_view.dart';
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
    GetPage(
      name: _Paths.CREATE_INPUT,
      page: () => const CreateInputView(),
      binding: CreateInputBinding(),
    ),
    GetPage(
      name: _Paths.MEMBERSHIP,
      page: () => const MembershipView(),
      binding: MembershipBinding(),
    ),
    GetPage(
      name: _Paths.MY_PROFILE,
      page: () => const MyProfileView(),
      binding: MyProfileBinding(),
    ),
    GetPage(
      name: _Paths.MEMBERSHIP_DETAILS,
      page: () => const MembershipDetailsView(),
      binding: MembershipDetailsBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => const PaymentView(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => const OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_FORM,
      page: () => const LoginFormView(),
      binding: LoginFormBinding(),
    ),
    GetPage(
      name: _Paths.DEAL,
      page: () => const DealView(),
      binding: DealBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
  ];
}
