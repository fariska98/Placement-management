import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/details.dart';
import 'package:placement/views/company_details.dart';
import 'package:placement/views/personal_details.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailsController>(builder: ((controller) {
      return Scaffold(
        appBar: AppBar(
        title: Text('Profile'),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.navigate_before),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Stack(
                    children: [
                      const Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.himalmag.com/wp-content/uploads/2019/07/sample-profile-picture.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                        child: Center(
                          child: ClipOval(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                width: 80,
                                height: 20,
                                color: const Color(0xff000000).withOpacity(0.6),
                                child: Icon(
                                  Icons.edit,
                                  size: 17,
                                  color:
                                      const Color(0xffeff2fa).withOpacity(0.7),
                                ),
                                
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Text("Name:${controller.details["name"]}"),
                  Text("Email:${controller.details["email"]}"),
                  Text("Contact:${controller.details["contact"]}"),
                  Text("Gender:${controller.details["gender"]}"),
                  Text("DOB:${controller.details["dob"]}"),
                  Text("Address:${controller.details["address"]}"),
                  Text("Department:${controller.details["department"]}"),
                  Text("Passout:${controller.details["passout"]}"),
                  Text("CGPA:${controller.details["cgpa"]}"),
                  Text("Backlog:${controller.details["backlog"]}"),
                  Text("UG Stream:${controller.details["ugstream"]}"),
                  Text("UG CGPA:${controller.details["ug cgpa"]}"),
                  Text("HS Stream:${controller.details["hs stream"]}"),
                  Text("HS School:${controller.details["hs school"]}"),
                  Text("HS Persentage:${controller.details["hs %"]}"),
                  Text("SSLC Stream:${controller.details["sslc stream"]}"),
                  Text("SSLC School:${controller.details["sslc school"]}"),
                  Text("SSLC Persentage:${controller.details["sslc %"]}"),
            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Get.to(()=>const PersonalDetails());
            //     },
            //     child: const Text('Personal Details'),
            //   ),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     child: const Text('Academic Details'),
            //   ),
            // ),
          ],
        ),
      ),
      );
    }));
  }
}

class CompanyProfileView extends StatelessWidget {
  const CompanyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.navigate_before),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Stack(
                    children: [
                      const Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.himalmag.com/wp-content/uploads/2019/07/sample-profile-picture.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                        child: Center(
                          child: ClipOval(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                width: 80,
                                height: 20,
                                color: const Color(0xff000000).withOpacity(0.6),
                                child: Icon(
                                  Icons.edit,
                                  size: 17,
                                  color:
                                      const Color(0xffeff2fa).withOpacity(0.7),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(()=>CompanyDetails());
                },
                child: const Text('Company Details'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     child: const Text('Academic Details'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
