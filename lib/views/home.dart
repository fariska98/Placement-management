import 'package:flutter/material.dart';
import 'package:placement/widget/drawer.dart';
import 'package:placement/widget/job_notification.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placement Management System'),
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: const [
            JobNotifications(),
          ],
        ),
      ),
    );
  }
}
