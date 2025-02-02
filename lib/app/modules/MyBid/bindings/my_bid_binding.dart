import 'package:get/get.dart';

import '../controllers/my_bid_controller.dart';

class MyBidBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyBidController>(
      () => MyBidController(),
    );
  }
}
