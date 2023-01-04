import 'package:get/get.dart';

import '../controllers/state_init_controller.dart';

class StateInitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StateInitController>(
      () => StateInitController(),
    );
  }
}
