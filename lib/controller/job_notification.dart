import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class JobController extends GetxController {
  int index = 0;
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

  submit(){
    if (formkey.currentState!.validate()) {
      addJobNotification();
      
    }
  }

  addJobNotification(){
    var notification=companyName.text+'*'+jobTitle.text+'*'+discription.text+'*'+backPapers.text+'*'+passoutYear.text+'*'
    +salaryRange.text+'*'+jobLocation.text+'*'+linkForApply.text+'*'+companyEmail.text;

        
    FirebaseFirestore.instance
        .collection("Jobs")
        .add({"Content": notification});
  
  }

  changePosition(int i) {
    index = i;
    update();
  }
}
