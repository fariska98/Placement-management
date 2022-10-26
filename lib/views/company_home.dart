import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:placement/widget/drawer.dart';

import '../controller/job_notification.dart';

class CompanyHome extends StatelessWidget {
  const CompanyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JobController>(builder: (controller) {
       return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        drawer: const CompanyDrawerWidget(),
        body: SingleChildScrollView(child: Column(children:  [
         const SizedBox(height: 50,),
          SizedBox(
            height: 120,
            child: PieChart(dataMap: {
              'Total Jobs':10,
              'selected':3,

            },
            animationDuration: const Duration(milliseconds: 800),
            chartRadius: MediaQuery.of(context).size.width/3,
            chartType: ChartType.ring,),
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 120,
            child: PieChart(dataMap: {
              'Total Students':120,
              'No of students Applied':60,

            },
            animationDuration: const Duration(milliseconds: 800),
            chartRadius: MediaQuery.of(context).size.width/3,
            chartType: ChartType.ring,),
          )
        ],)),
        backgroundColor: Colors.green[50],
      );
    },);
  }
}