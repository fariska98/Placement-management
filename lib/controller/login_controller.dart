import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:placement/controller/details.dart';
import 'package:placement/views/details.dart';
import 'package:placement/views/home.dart';

import '../views/personal_details.dart';

class LoginController extends GetxController {
  final _auth = FirebaseAuth.instance;
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final registrationFormKey = GlobalKey<FormState>();
  String dropdownValue = 'Student';
  var items = ['Student', 'Company'];
  changeDropdown(String? newValue) {
    dropdownValue = newValue!;
    update();
  }
  
  createUser() async {
    if (registrationFormKey.currentState!.validate()) {
      var email = emailController.text;
      var pass = passwordController.text;

      try {
        final newUser = await _auth.createUserWithEmailAndPassword(
            email: email, password: pass);
        if (newUser != null) {
          Get.off(() => const Details());
        }
      } catch (e) {
        print(e);
      }
    }
  }

  signout() async {
    await _auth.signOut();
  }

  Future signIn() async {
    if (formkey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim());
            await Get.find<DetailsController>().getdocID();
        Get.off(() => const HomeScreen());
      } catch (e) {
        Get.snackbar('User Not found', 'Check Username and password',
            snackPosition: SnackPosition.BOTTOM);
        // return e;
      }

      Get.find<LoginController>().emailController.clear();
      Get.find<LoginController>().passwordController.clear();
    }
  }
}
