import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:placement/controller/details.dart';
import 'package:placement/views/display_companies.dart';
import 'package:placement/views/display_students.dart';
import 'package:placement/widget/add_notification.dart';
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
                      if (data['user type'] == "student") {
                        Get.find<DetailsController>().isStudent = true;
                      } else if (data['user type'] == "company"){
                        
                        Get.find<DetailsController>().isCompany = true;

                      } else 
                      {
                         Get.find<DetailsController>().isFaculty = true;
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
                              Visibility(
                                visible:Get.find<DetailsController>().isStudent ,
                                child: const JobNotifications()),
                              Image.network(
                                  'https://img.freepik.com/premium-vector/employment-agency-recruitment-placement-job-service-illustration_2175-5078.jpg?w=996'
                                  ),
                            Column(
                              
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: double.infinity,
                                  child:Visibility (
                                    visible:Get.find<DetailsController>().isCompany ,
                                    child: ListTile(
                                      
                                      onTap: () {
                                        Get.to(() => const AddNotification());
                                      },
                                          leading: FlutterLogo(size: 72.0),
                                          title: Text('ADD NOTIFICATION'),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              side: BorderSide(color: Colors.black),
                                            ),
                                          subtitle: Text(
                                            'Add job details to students'
                                          ),
                                          trailing: Icon(Icons.more_vert),
                                          isThreeLine: true,
                                        ),
                                  ),),
      SizedBox(height: 10,),
       SizedBox(
                                  height: 100,
                                  width: double.infinity,
                                  child:Visibility(
                                    visible:Get.find<DetailsController>().isFaculty||Get.find<DetailsController>().isCompany,
                                    
                                    child: ListTile(
                                      onTap: () {
                                        Get.to(() => const DisplayStudents());
                                      },
                                          leading: FlutterLogo(size: 72.0),
                                          title: Text('VIEW STUDENTS'),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              side: BorderSide(color: Colors.black),
                                            ),
                                          subtitle: Text(
                                            'View details of the students'
                                          ),
                                          trailing: Icon(Icons.more_vert),
                                          isThreeLine: true,
                                        ),
                                  ),),
       SizedBox(height: 10,),
        Visibility(
                                visible:
                                    Get.find<DetailsController>().isFaculty,
         child: SizedBox(
                                    height: 100,
                                    width: double.infinity,
                                    child: ListTile(
                                      onTap: () {
                                        Get.to(() => const DisplayCompany());
                                      },
          leading: FlutterLogo(size: 72.0),
          title: Text('VIEW COMPANIES'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.black),
            ),
          subtitle: Text(
            'View details of the COMPANIES'
          ),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
             ),),
       )
                              ],
                            
                            ),
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
