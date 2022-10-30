import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/job_notification.dart';
import 'package:placement/controller/login_controller.dart';
import 'package:placement/views/company_home.dart';
import 'package:placement/views/company_home.dart';
import 'package:placement/views/faculty_home.dart';
import 'package:placement/views/home.dart';
import 'package:placement/views/login.dart';
import 'package:placement/views/personal_details.dart';
import 'package:placement/widget/add_notification.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    
  );
  
  Get.put(LoginController());
  Get.put(JobController());
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( 
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home:FirebaseAuth.instance.currentUser!=null?const AddNotification():const LoginView(),
      //  StreamBuilder<User?>(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context,snapshot){
      //     if (snapshot.hasData) {
      //       return const HomeScreen();
      //     }else{
      //       return const LoginView(); }
          
      //   },
      // ),
    );
  }
}
