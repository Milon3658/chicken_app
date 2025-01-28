import 'package:get/get.dart';

import '../controllers/edit_adds_controller.dart';

class EditAddsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditAddsController>(
      () => EditAddsController(),
    );
  }
}
