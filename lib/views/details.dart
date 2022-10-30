import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/login_controller.dart';
import 'package:placement/views/company_details.dart';
import 'package:placement/views/personal_details.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details'),),
     body:GetBuilder<LoginController>(builder: ((controller) {
       return SingleChildScrollView(
         child: Column(
             children:[
          DropdownButton(
            value: controller.dropdownValue,
            items:  controller.items.map((String items) => DropdownMenuItem(value: items,
          child: Text(items),)).toList(), onChanged: (String? newValue){
             controller.changeDropdown(newValue);
       
          }),
          controller.dropdownValue=='Student'?
          const PersonalDetails():
          const CompanyDetails(),
           ]
            ),
       );
     })) 
    
    );
  }
}

