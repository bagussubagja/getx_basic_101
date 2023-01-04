import 'package:get/get.dart';

import 'package:getx_basic_101/app/modules/auth_register/controllers/authentication_register_controller.dart';

import '../controllers/auth_register_controller.dart';

class AuthRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticationRegisterController>(
      () => AuthenticationRegisterController(),
    );
    Get.lazyPut<AuthRegisterController>(
      () => AuthRegisterController(),
    );
  }
}
