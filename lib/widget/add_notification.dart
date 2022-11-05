import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/job_notification.dart';
import 'package:placement/controller/login_controller.dart';

class AddNotification extends StatelessWidget {
  const AddNotification({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JobController>(builder: ((controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Add Notification',
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.navigate_before),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: controller.formkey,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Add Notification Here',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value==null||value.isEmpty) {
                        return 'Enter Company Name';
                      }
                    },
                    controller: controller.companyName,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school),
                      hintText: "Company Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value==null||value.isEmpty) {
                        return 'Job Title';
                      }
                    },
                    controller: controller.jobTitle,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school),
                      hintText: "Job Title",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    maxLength: 250,
                    validator: (value) {
                      if (value==null||value.isEmpty) {
                        return 'Discription';
                      }
                    },
                    controller: controller.discription,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.date_range_outlined),
                      hintText: "Discription",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value==null||value.isEmpty) {
                        return 'Back Papers';
                      }
                    },
                    controller: controller.backPapers,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Maximum Back Papers",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value==null||value.isEmpty) {
                        return 'Passout Year';
                      }
                    },
                    controller: controller.passoutYear,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school),
                      hintText: "Passout Year",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value==null||value.isEmpty) {
                        return 'Salary Range';
                      }
                    },
                    controller: controller.salaryRange,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school),
                      hintText: "Salary Range",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value==null||value.isEmpty) {
                        return 'Job Location';
                      }
                    },
                    controller: controller.jobLocation,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.date_range_outlined),
                      hintText: "Job Location",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.url,
                    validator: (value) {
                      if (value==null||value.isEmpty) {
                        return 'Link For Apply';
                      }
                    },
                    controller: controller.linkForApply,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Link For Apply",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value==null||value.isEmpty) {
                        return 'Email';
                      }
                    },
                    controller: controller.companyEmail,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            controller.submit();
                            Get.back();
                          }, child: const Text('Submit'))),
                )
              ],
            ),
          ),
        ),
      );
    }));
  }
}
