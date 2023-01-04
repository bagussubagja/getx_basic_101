import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basic_101/app/modules/auth_login/controllers/auth_login_controller.dart';
import 'package:getx_basic_101/app/modules/auth_login/controllers/authentication_login_controller.dart';

import '../../../routes/app_pages.dart';

class AppMiddleware extends GetMiddleware{
  final authController = Get.find<AuthLoginController>();
  @override
  // TODO: implement priority
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (authController.checkIfTokenIsNotNull()) {
      return RouteSettings(name: Routes.HOME);
    } else {
      return RouteSettings(name: Routes.AUTH_LOGIN);
    }
  }
}