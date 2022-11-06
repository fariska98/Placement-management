import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/job_notification.dart';
import 'package:placement/widget/job_tile.dart';


class DisplayNotification extends StatelessWidget {
  const DisplayNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<JobController>(
        builder: (controller){
        return Column(
          children: [
            Text('NOTIFICATION'),
            Expanded(
          child: FutureBuilder(
        future: controller.getdocID(),
        builder: (context, snapshot) {
          return ListView.builder(
              //list create
              itemCount: controller.docIDs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: 
                  GetNotification(
                    documentId: controller.docIDs[index],
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