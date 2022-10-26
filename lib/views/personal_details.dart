import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/job_notification.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JobController>(builder: ((controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
          leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.navigate_before),
        ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text('Personal Details',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Name",
                border: OutlineInputBorder(),
            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail_outline_rounded),
                hintText: "Email",
                border: OutlineInputBorder(),
            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone_android),
                hintText: "Phone Number",
                border: OutlineInputBorder(),
            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.school),
                hintText: "Gender",
                border: OutlineInputBorder(),
            ),
                ),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.date_range),
                hintText: "Date Of Birth",
                border: OutlineInputBorder(),
            ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.pin_drop),
                hintText: "Address",
                border: OutlineInputBorder(),
            ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('Academic Details',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),






               
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.school),
                hintText: "Department",
                border: OutlineInputBorder(),
            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.date_range_rounded),
                hintText: "Passout Year",
                border: OutlineInputBorder(),
            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.grade),
                hintText: "CGPA or  %",
                border: OutlineInputBorder(),
            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.school_rounded),
                hintText: "Backlogs If Any",
                border: OutlineInputBorder(),
            ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('UG Programme',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.school),
                hintText: "Stream",
                border: OutlineInputBorder(),
            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.school),
                hintText: "College",
                border: OutlineInputBorder(),
            ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.date_range_outlined),
                hintText: "Passout Year",
                border: OutlineInputBorder(),
            ),
                ),
              ),
               




              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "CGPA or %",
                border: OutlineInputBorder(),
            ),
                ),
              ),
               
               
               
               
               const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('Higher Secondary',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.school),
                hintText: "Stream",
                border: OutlineInputBorder(),
            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.school),
                hintText: "School Name",
                border: OutlineInputBorder(),
            ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.date_range_outlined),
                hintText: "Passout Year",
                border: OutlineInputBorder(),
            ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Persentage",
                border: OutlineInputBorder(),
            ),
                ),
              ),





              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('SSLC',
                style: TextStyle(fontWeight: FontWeight.bold),),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.school),
                hintText: "Stream",
                border: OutlineInputBorder(),
            ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.school),
                hintText: "School Name",
                border: OutlineInputBorder(),
            ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.date_range_outlined),
                hintText: "Passout Year",
                border: OutlineInputBorder(),
            ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Persentage",
                border: OutlineInputBorder(),
            ),
                ),
              ),
            ],
          ),
        ),
          


      );
    }));
  }
}

