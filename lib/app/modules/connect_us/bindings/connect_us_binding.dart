import 'package:get/get.dart';

import '../controllers/connect_us_controller.dart';

class ConnectUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConnectUsController>(
      () => ConnectUsController(),
    );
  }
}
