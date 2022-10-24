import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  List<String> title = [
    'Student',
    'Company',
    'Faculty',
  ];
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  int index = 0;
  changeUser(int i) {
    index = i;
    update();
  }
}
