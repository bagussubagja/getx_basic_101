import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthLoginController extends GetxController {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final box = GetStorage();
  bool? getToken;

  bool checkIfTokenIsNotNull(){
    getToken = box.hasData('token');
    return getToken!;
  }

}
