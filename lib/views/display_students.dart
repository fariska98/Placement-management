import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/details.dart';
import 'package:placement/controller/job_notification.dart';
import 'package:placement/widget/job_tile.dart';
import 'package:placement/widget/students_tile.dart';


class DisplayStudents extends StatelessWidget {
  const DisplayStudents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<DetailsController>(
        builder: (controller){
        return Column(
          children: [
            SafeArea(child: 
            
            Text('STUDENTS DETAILS',
            style: TextStyle(fontSize: 20),)),
            Expanded(
          child: FutureBuilder(
        future: controller.sgetdocID(),
        builder: (context, snapshot) {
          return ListView.builder(
              //list create
              itemCount: controller.sdocIDs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: 
                  GetStudents(
                    documentId: controller.sdocIDs[index],
                  ),
                );
              });
        },
      )),
          ],
        );
      }),
    );
  }
}