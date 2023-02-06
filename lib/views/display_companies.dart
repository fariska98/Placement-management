import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/details.dart';
import 'package:placement/controller/job_notification.dart';
import 'package:placement/widget/company_tile.dart';
import 'package:placement/widget/job_tile.dart';
import 'package:placement/widget/students_tile.dart';


class DisplayCompany extends StatelessWidget {
  const DisplayCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<DetailsController>(
        builder: (controller){
        return Column(
          children: [
            SafeArea(child: 
            
            Text('COMPANY DETAILS',
            style: TextStyle(fontSize: 20),)),
            Expanded(
          child: FutureBuilder(
        future: controller.cgetdocID(),
        builder: (context, snapshot) {
          return ListView.builder(
              //list create
              itemCount: controller.cdocIDs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: 
                  GetCompany(
                    documentId: controller.cdocIDs[index],
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