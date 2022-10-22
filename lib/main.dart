import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/job_notification.dart';
import 'package:placement/controller/login.dart';
import 'package:placement/views/login.dart';

void main() {
  Get.put(LoginController());
  Get.put(JobController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const LoginView(),
    );
  }
}
