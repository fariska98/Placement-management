import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/login_controller.dart';

class DetailsController extends GetxController {
  final _auth = FirebaseAuth.instance;
  final formkey = GlobalKey<FormState>();

  //var details;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  TextEditingController addressController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController passoutController = TextEditingController();
  TextEditingController cgpaController = TextEditingController();

  TextEditingController backlogController = TextEditingController();
  TextEditingController streamController = TextEditingController();
  TextEditingController collegeController = TextEditingController();
  TextEditingController ugcgpaController = TextEditingController();
  TextEditingController hsstreamController = TextEditingController();
  TextEditingController hsschoolController = TextEditingController();
  TextEditingController hspersentageController = TextEditingController();
  TextEditingController sslcstreamController = TextEditingController();
  TextEditingController sslcschoolController = TextEditingController();
  TextEditingController sslcpersentageController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  TextEditingController companyName = TextEditingController();
  TextEditingController companyEmail = TextEditingController();
  TextEditingController companyHrname = TextEditingController();
  TextEditingController companyContact = TextEditingController();
  TextEditingController companyAddress = TextEditingController();

  registerCompany() {
    if (formkey.currentState!.validate()) {
      var email = _auth.currentUser!.email;
      FirebaseFirestore.instance.collection(email!).add({
        "name": companyName.text,
        "email": companyEmail.text,
        "contact": companyHrname.text,
        "gender": companyContact.text,
        "dob": companyAddress.text,
      });
    }
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1985, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      dateController.text =
          '${selectedDate.day.toString()}-${selectedDate.month.toString()}-${selectedDate.year.toString()}';
      update();
    }
  }

  registerUser() {
    if (formkey.currentState!.validate()) {
      var email = _auth.currentUser!.email;

      FirebaseFirestore.instance.collection(email!).add({
        "name": nameController.text,
        "email": emailController.text,
        "contact": contactController.text,
        "gender": genderController.text,
        "dob": dateController.text,
        "address": addressController.text,
        "department": departmentController.text,
        "passout": passoutController.text,
        "cgpa": cgpaController.text,
        "backlog": backlogController.text,
        "ugstream": streamController.text,
        "college": collegeController.text,
        "ug cgpa": ugcgpaController.text,
        "hs Stream": hsstreamController.text,
        "hs school": hsschoolController.text,
        "hs %": hspersentageController.text,
        "sslc stream": sslcstreamController.text,
        "sslc school": sslcschoolController.text,
        "sslc %": sslcpersentageController.text
      });
    }
  }

  List<String> docIDs = [];
  Future getdocID() async {
    var email = _auth.currentUser!.email;
    print(email);
    await FirebaseFirestore.instance
        .collection(email!)
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              docIDs.add(document.reference.id);
              print(docIDs.length);
            }));
  }
}
