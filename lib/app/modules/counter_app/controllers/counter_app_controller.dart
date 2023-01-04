import 'package:get/get.dart';

class CounterAppController extends GetxController {
  //TODO: Implement CounterAppController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
  void decrement() => count.value--;
}
