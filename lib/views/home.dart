import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:placement/controller/details.dart';
import 'package:placement/widget/drawer.dart';
import 'package:placement/widget/job_notification.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var email = FirebaseAuth.instance.currentUser!.email;
    CollectionReference users = FirebaseFirestore.instance.collection(email!);

    return FutureBuilder(
        future: Get.find<DetailsController>().getdocID(),
        builder: (context, snapshot) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('Dashboard'),
              ),
              drawer: const DrawerWidget(),
              body: FutureBuilder<DocumentSnapshot>(
                  future:
                      users.doc(Get.find<DetailsController>().docIDs[0]).get(),
                  builder: ((context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      Get.find<DetailsController>().details = data;
                      if (data['cgpa'] != null) {
                        Get.find<DetailsController>().isStudent = true;
                      } else {
                        Get.find<DetailsController>().isCompany = true;
                      }
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Visibility(
                                visible:
                                    Get.find<DetailsController>().isStudent,
                                child: Text(
                                  'NOTIFICATIONS',
                                  style: GoogleFonts.outfit(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                ),
                              ),
                              const JobNotifications(),
                              Image.network(
                                  'https://img.freepik.com/premium-vector/employment-agency-recruitment-placement-job-service-illustration_2175-5078.jpg?w=996')
                            ],
                          ),
                        ),
                      );
                    }
                    return const Center(
                      child: SizedBox(
                          height: 40,
                          width: 40,
                          child: CircularProgressIndicator()),
                    );
                  })));
        });
  }
}
