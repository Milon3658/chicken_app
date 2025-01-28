import 'package:get/get.dart';

import '../controllers/chicken_monitor_controller.dart';

class ChickenMonitorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChickenMonitorController>(
      () => ChickenMonitorController(),
    );
  }
}
