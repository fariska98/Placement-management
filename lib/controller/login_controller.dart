import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:placement/views/details.dart';
import 'package:placement/views/home.dart';

import '../views/personal_details.dart';


class LoginController extends GetxController {
  final _auth=FirebaseAuth.instance;
    TextEditingController nameController=TextEditingController();

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  final formkey=GlobalKey<FormState>();
  final registrationFormKey=GlobalKey<FormState>();
 String dropdownValue='Student';
      var items =['Student','Company'];
      changeDropdown(String? newValue){
        dropdownValue=newValue!;
        update();
      }
  //      void name() {
  //   FirebaseFirestore.instance
  //       .collection("Name")
  //       .add({"title": nameController.text});
  // }
  //  void email() {
  //   FirebaseFirestore.instance
  //       .collection("email")
  //       .add({"title": emailController.text});
  // }

  // void pass() {
  //   FirebaseFirestore.instance
  //       .collection("pass")
  //       .add({"passward": passwordController.text});
  // }    
  createUser()async{
    if (registrationFormKey.currentState!.validate()) {
      var email=emailController.text;
    var pass=passwordController.text;
  
    try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: pass);
                    if (newUser != null) {
                                   Get.off(()=>const Details());

                    }
                  } catch (e) {
                    print(e);
                  }
  }
      
    }
    
  signout()async{
    await _auth.signOut();
  }
  Future signIn() async {
  if(formkey.currentState!.validate()){
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim());
 
  Get.find<LoginController>().emailController.clear();
  Get.find<LoginController>().passwordController.clear();
    Get.off(()=>const HomeScreen());

  }
  
}
}

