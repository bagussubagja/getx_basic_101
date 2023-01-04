import 'package:get/get.dart';

import '../controllers/counter_app_controller.dart';

class CounterAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterAppController>(
      () => CounterAppController(),
    );
  }
}
