import 'package:get/get.dart';

import '../controllers/delete_adds_controller.dart';

class DeleteAddsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeleteAddsController>(
      () => DeleteAddsController(),
    );
  }
}
