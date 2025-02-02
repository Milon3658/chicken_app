import 'package:get/get.dart';

import '../controllers/my_deal_controller.dart';

class MyDealBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyDealController>(
      () => MyDealController(),
    );
  }
}
