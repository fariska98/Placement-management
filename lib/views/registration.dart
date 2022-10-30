import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/login_controller.dart';
import 'package:placement/views/home.dart';
import 'package:placement/views/login.dart';
import 'package:placement/views/personal_details.dart';

class RegistrationView extends StatelessWidget {
  
  //final String user;
  const RegistrationView({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetBuilder<LoginController>(
      builder: (controller) {
        return SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 100, 10, 20),
          child: Column(
            children: const [
              Text(
                'Registration',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
             
                   StudentRegistration()
                  
            ],
          ),
        );
      },
    )); 
  }
}



class StudentRegistration extends StatelessWidget {
  const StudentRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: ((controller) {
      
      return Form(
        key: controller.registrationFormKey,
        child: Column(
        children: [
         
          // TextFormField(
          //   controller: controller.nameController,
          //   decoration: const InputDecoration(
          //     prefixIcon: Icon(Icons.person),
          //     hintText: "Name",
          //     border: OutlineInputBorder(),
          //   ),
          //   onChanged: (value) {},
          // ),
          const SizedBox(
            height: 10,
          ),
           TextFormField(
            keyboardType: TextInputType.emailAddress,
              validator: (value) {
                        if (value==null||value.isEmpty) {
                          return 'Email';
                        }
                      },
            controller: controller.emailController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.mail_outline_rounded),
              hintText: "Email",
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 10,
          ),
          // DropdownButton(
          //   value: controller.dropdownValue,
          //   items:  controller.items.map((String items) => DropdownMenuItem(value: items,
          // child: Text(items),)).toList(), onChanged: (String? newValue){
          //    controller.changeDropdown(newValue);
      
          // }),
          TextFormField(
              validator: (value) {
                        if (value==null||value.isEmpty) {
                          return 'Password';
                        }
                      },
            controller: controller.passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: "Enter password",
              suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
              validator: (value) {
                        if (value==null||value.isEmpty) {
                          return 'Re-enter Password';
                        }
                      },
            controller: controller.passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: "Re-Enter password",
              suffixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: ()  {
                    controller.createUser();
                    // controller.name();
                    // controller.email();
                    // controller.pass();
                  },
                  child: const Text("Submit"))),
        ],
          ),
      );
    }));
    
    
  }
}
