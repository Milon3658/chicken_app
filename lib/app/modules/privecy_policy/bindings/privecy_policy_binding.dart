import 'package:get/get.dart';

import '../controllers/privecy_policy_controller.dart';

class PrivecyPolicyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrivecyPolicyController>(
      () => PrivecyPolicyController(),
    );
  }
}
