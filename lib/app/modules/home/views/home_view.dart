import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_basic_101/app/modules/counter_app/views/counter_app_view.dart';
import 'package:getx_basic_101/app/modules/rest_api_implement/views/rest_api_implement_view.dart';
import 'package:getx_basic_101/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              box.read('email'),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(CounterAppView());
                },
                child: Text('Counter App')),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(RestApiImplementView());
                },
                child: Text('REST API App')),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
                onPressed: () {
                  box.remove('token');
                  box.remove('email');
                  Get.offAllNamed(Routes.AUTH_LOGIN);
                },
                child: Text('Log Out'))
          ],
        ),
      ),
    );
  }
}
