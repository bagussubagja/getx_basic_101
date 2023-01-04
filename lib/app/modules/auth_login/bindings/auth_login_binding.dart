import 'package:get/get.dart';
import 'package:getx_basic_101/app/modules/auth_login/controllers/authentication_login_controller.dart';

import '../controllers/auth_login_controller.dart';

class AuthLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthLoginController>(
      () => AuthLoginController(),
    );
    Get.lazyPut<AuthenticationLoginController>(
          () => AuthenticationLoginController(),
    );
  }
}
