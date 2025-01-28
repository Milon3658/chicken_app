import 'package:get/get.dart';

import '../controllers/my_total_adds_controller.dart';

class MyTotalAddsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyTotalAddsController>(
      () => MyTotalAddsController(),
    );
  }
}
