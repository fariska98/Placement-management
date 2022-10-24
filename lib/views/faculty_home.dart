import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/job_notification.dart';
import 'package:placement/widget/drawer.dart';

class FacultyHome extends StatelessWidget {
  const FacultyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    GetBuilder<JobController>(builder: ((controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Faculty'),
        ),
        drawer: const FacultyDrawerWidget(),
      );
    }));
  }
}