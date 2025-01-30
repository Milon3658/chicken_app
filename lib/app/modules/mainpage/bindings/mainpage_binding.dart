import 'package:chicken/app/modules/Homepage/controllers/homepage_controller.dart';
import 'package:chicken/app/modules/account/controllers/account_controller.dart';
import 'package:get/get.dart';

import '../controllers/mainpage_controller.dart';

class MainpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainpageController>(
      () => MainpageController(),
    );
    Get.put(AccountController());
    Get.put(HomepageController());
  }
}
