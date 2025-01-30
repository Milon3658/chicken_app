import 'package:get/get.dart';

import '../controllers/login_form_controller.dart';

class LoginFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginFormController>(
      () => LoginFormController(),
    );
  }
}
