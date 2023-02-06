import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class JobController extends GetxController {
  int index = 0;
  bool loading = true;
  TextEditingController companyName = TextEditingController();
  TextEditingController jobTitle = TextEditingController();
  TextEditingController discription = TextEditingController();
  TextEditingController backPapers = TextEditingController();
  TextEditingController passoutYear = TextEditingController();
  TextEditingController salaryRange = TextEditingController();
  TextEditingController jobLocation = TextEditingController();
  TextEditingController linkForApply = TextEditingController();
  TextEditingController companyEmail = TextEditingController();

  final formkey=GlobalKey<FormState>();

  List<String> docIDs = [];
  //get doc id
  Future getdocID() async {
    await FirebaseFirestore.instance
        .collection("Jobs")
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              docIDs.add(document.reference.id);
            }));
  }

  submit(){
    if (formkey.currentState!.validate()) {
      addJobNotification();
      
    }
  }

  addJobNotification(){
    // var notification=companyName.text+'*'+jobTitle.text+'*'+discription.text+'*'+backPapers.text+'*'+passoutYear.text+'*'
    // +salaryRange.text+'*'+jobLocation.text+'*'+linkForApply.text+'*'+companyEmail.text;

        
    FirebaseFirestore.instance
        .collection("Jobs")
        .add({"Name": companyName.text,"title":jobTitle.text,"discription":discription.text,
        "backpapers":backPapers.text,"passout":passoutYear.text,"salary":salaryRange.text,
        "location":jobLocation.text,"link":linkForApply.text,"userid":FirebaseAuth.instance.currentUser!.email});
  
  }

  changePosition(int i) {
    index = i;
    update();
  }
}
