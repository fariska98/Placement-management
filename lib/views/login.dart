

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/login.dart';
import 'package:placement/views/company_home.dart';
import 'package:placement/views/faculty_home.dart';
import 'package:placement/views/home.dart';
import 'package:placement/views/registration.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (controller) {
      return Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 100, 10, 20),
          child: Column(
            children: [
              const Text(
                'Placement Management',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            controller.changeUser(0);
                          },
                          child: const Text('Student'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            controller.changeUser(1);
                          },
                          child: const Text('Company'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            controller.changeUser(2);
                          },
                          child: const Text('Faculty'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                controller.title[controller.index],
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (controller.index==0) {
                         Get.off(() => 
                      
                      const HomeScreen());
                        
                      }
                      else if (controller.index==1){
                        Get.off(()=>const CompanyHome());
                      }

                      else {
                        Get.off(()=>const FacultyHome());
                      }
                    },
                    child: const Text('Login')),
              ),
              controller.title[controller.index] != 'Faculty'
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Havent registered?'),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => RegistrationView(
                                  user: controller.title[controller.index],
                                ));
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      );
    });
  }
}
