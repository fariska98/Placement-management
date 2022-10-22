import 'package:get/get.dart';

class JobController extends GetxController {
  int index = 0;

  changePosition(int i) {
    index = i;
    update();
  }
}
