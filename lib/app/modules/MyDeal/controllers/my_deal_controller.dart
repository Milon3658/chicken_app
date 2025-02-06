import 'package:get/get.dart';

class MyDealController extends GetxController {
  //TODO: Implement MyDealController

  final count = 0.obs;

  RxInt changeTab = 0.obs;
  RxInt selectOption = 0.obs;
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
