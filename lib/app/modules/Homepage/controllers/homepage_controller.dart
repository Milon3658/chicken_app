import 'package:get/get.dart';

class HomepageController extends GetxController {
  //TODO: Implement HomepageController

  final count = 0.obs;
  RxBool isCategoryTapped = false.obs;
  RxInt tabTextIconIndexSelected = 0.obs;
  RxBool showChickenPrice = false.obs;
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
