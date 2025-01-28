import 'package:get/get.dart';

import '../controllers/create_input_controller.dart';

class CreateInputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateInputController>(
      () => CreateInputController(),
    );
  }
}
