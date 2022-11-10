import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/details.dart';
import 'package:placement/controller/job_notification.dart';
import 'package:placement/views/details.dart';

class CompanyDetails extends StatelessWidget {
  const CompanyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailsController>(builder: ((controller) {
      return Form(
        key:controller.formkey,
       child:Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Company Details',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name';
                        }
                      },
              controller: controller.companyName,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Company Name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email';
                        }
                      },
              controller: controller.companyEmail,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail_outline_rounded),
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextFormField(
              validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'HR Name';
                        }
                      },
              controller: controller.companyHrname,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "HR Name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextFormField(
              validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Number';
                        }
                      },
              controller: controller.companyContact,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone_android),
                hintText: "Phone Number",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextFormField(
              validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Address';
                        }
                      },
              controller: controller.companyAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.pin_drop_rounded),
                hintText: "Address",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 25),
            child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      controller.registerCompany();
                      Get.back(); 
                    }, child: const Text('Submit'))),
          )
        ],
      )
       );
    }));
  }
}
