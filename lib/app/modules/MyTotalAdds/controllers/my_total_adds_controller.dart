import 'package:get/get.dart';

class MyTotalAddsController extends GetxController {
  //TODO: Implement MyTotalAddsController

  final count = 0.obs;
  RxInt tabTextIconIndexSelected = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
