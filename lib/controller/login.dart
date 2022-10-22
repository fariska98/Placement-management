import 'package:get/get.dart';

class LoginController extends GetxController {
  List<String> title = [
    'Student',
    'Company',
    'Faculty',
  ];
  int index = 0;
  changeUser(int i) {
    index = i;
    update();
  }
}
