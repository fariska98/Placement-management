import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:placement/widget/drawer.dart';
import 'package:placement/widget/job_notification.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      drawer: const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            
            children:
            
            
             [
              SizedBox(
                height: 20,
              ),
              Text(
  'NOTIFICATIONS',
  style: GoogleFonts.outfit(textStyle: Theme.of(context).textTheme.headline6),
),
              JobNotifications(),
              Image.network('https://img.freepik.com/premium-vector/employment-agency-recruitment-placement-job-service-illustration_2175-5078.jpg?w=996')
            ],
          ),
        ),
      ),
    );
  }
}
