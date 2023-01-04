import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_basic_101/app/modules/auth_register/controllers/auth_register_controller.dart';
import 'package:http/http.dart' as http;

import '../../../utils/url_base.dart';
import '../../home/views/home_view.dart';

class AuthenticationRegisterController extends GetxController {

  final controller = Get.find<AuthRegisterController>();

  final box = GetStorage();

  Future<void> registerWithEmail() async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var url = Uri.parse(
          ApiEndpoints.baseUrl + ApiEndpoints.authEndPoints.registerEmail + ApiEndpoints.authEndPoints.apiKeyRegister);

      Map body = {
        'email': controller.emailController.text.trim(),
        'password': controller.passwordController.text
      };

      http.Response response =
      await http.post(url, body: jsonEncode(body), headers: headers);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);

        var token = json['access_token'];
        var email = json['user']['email'];
        box.write('token', token);
        box.write('email', email);
        controller.emailController.clear();
        controller.passwordController.clear();
        Get.offAll(() => HomeView());
      } else {
        throw jsonDecode(response.body)['msg'] ?? "Unknown Error Occured";
      }
    } catch (e) {
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text('Error'),
              contentPadding: EdgeInsets.all(20),
              children: [
                Text(
                  e.toString(),
                ),
              ],
            );
          });
    }
  }

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
}
