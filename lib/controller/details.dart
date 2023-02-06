import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/views/details.dart';

class DetailsController extends GetxController {
  @override
  void onInit() {
    if (FirebaseAuth.instance.currentUser != null) {
      getdocID();
    }
    super.onInit();
  }

  final _auth = FirebaseAuth.instance;
  final formkey = GlobalKey<FormState>();

  var details = {};
  bool isStudent = false;
  bool isFaculty = false;
  bool isCompany = false;

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
        "user type": "company",
        "name": companyName.text,
        "email": companyEmail.text,
        "HRName": companyHrname.text,
        "contact": companyContact.text,
        "Adress": companyAddress.text,
      });
       FirebaseFirestore.instance.collection("company").add({
        "user type": "company",
        "name": companyName.text,
        "email": companyEmail.text,
        "HRName": companyHrname.text,
        "contact": companyContact.text,
        "Adress": companyAddress.text,
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
      var email = FirebaseAuth.instance.currentUser!.email;
      FirebaseFirestore.instance.collection(email!).add({
        "user type": "student",
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
      FirebaseFirestore.instance.collection("students").add({
        "user type": "student",
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
    var email = FirebaseAuth.instance.currentUser!.email;
    await FirebaseFirestore.instance
        .collection(email!)
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              docIDs.add(document.reference.id);
            }));
    print(docIDs.length);
  }

 Future<void> clearValues() async {
    details = {};
    docIDs = [];
    print(docIDs.length);
    nameController.clear();
    emailController.clear();
    contactController.clear();
    genderController.clear();
    addressController.clear();
    departmentController.clear();
    passoutController.clear();
    cgpaController.clear();
    backlogController.clear();
    streamController.clear();
    collegeController.clear();
    ugcgpaController.clear();
    hsstreamController.clear();
    hsschoolController.clear();
    hspersentageController.clear();
    sslcschoolController.clear();
    sslcpersentageController.clear();
    dateController.clear();
    companyName.clear();
    companyEmail.clear();
    companyHrname.clear();
    companyContact.clear();
    companyAddress.clear();
    isStudent=false;
    isCompany=false;
    isFaculty=false;
  }

  List<String> sdocIDs = [];

  Future sgetdocID() async {
    
    await FirebaseFirestore.instance
        .collection("students")
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              sdocIDs.add(document.reference.id);
            }));
    print(sdocIDs.length);
  }

 List<String> cdocIDs = [];

  Future cgetdocID() async {
    
    await FirebaseFirestore.instance
        .collection("company")
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              cdocIDs.add(document.reference.id);
            }));
    print(cdocIDs.length);
  }
}
