import 'package:get/get.dart';

import 'package:getx_basic_101/app/modules/auth_login/bindings/auth_login_binding.dart';
import 'package:getx_basic_101/app/modules/auth_login/views/auth_login_view.dart';
import 'package:getx_basic_101/app/modules/auth_register/bindings/auth_register_binding.dart';
import 'package:getx_basic_101/app/modules/auth_register/views/auth_register_view.dart';
import 'package:getx_basic_101/app/modules/counter_app/bindings/counter_app_binding.dart';
import 'package:getx_basic_101/app/modules/counter_app/views/counter_app_view.dart';
import 'package:getx_basic_101/app/modules/home/bindings/home_binding.dart';
import 'package:getx_basic_101/app/modules/home/views/home_view.dart';
import 'package:getx_basic_101/app/modules/rest_api_implement/bindings/rest_api_implement_binding.dart';
import 'package:getx_basic_101/app/modules/rest_api_implement/views/rest_api_implement_view.dart';
import 'package:getx_basic_101/app/modules/state_init/bindings/state_init_binding.dart';
import 'package:getx_basic_101/app/modules/state_init/middleware/middleware.dart';
import 'package:getx_basic_101/app/modules/state_init/views/state_init_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.STATE_INIT;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.STATE_INIT,
      page: () => StateInitView(),
      binding: StateInitBinding(),
      middlewares: [AppMiddleware()]
    ),
    GetPage(
      name: _Paths.AUTH_LOGIN,
      page: () => AuthLoginView(),
      binding: AuthLoginBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_REGISTER,
      page: () => AuthRegisterView(),
      binding: AuthRegisterBinding(),
    ),
    GetPage(
      name: _Paths.COUNTER_APP,
      page: () => CounterAppView(),
      binding: CounterAppBinding(),
    ),
    GetPage(
      name: _Paths.REST_API_IMPLEMENT,
      page: () => RestApiImplementView(),
      binding: RestApiImplementBinding(),
    ),
  ];
}
