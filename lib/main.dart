import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_basic_101/app/modules/auth_login/controllers/auth_login_controller.dart';
import 'package:getx_basic_101/app/modules/rest_api_implement/controllers/rest_api_implement_controller.dart';
import 'app/modules/rest_api_implement/providers/note_provider.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AuthLoginController());
  Get.put(NoteProvider());
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "GetX Basic",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.dark(),
    ),
  );
}
