

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:placement/controller/login_controller.dart';
import 'package:placement/views/company_home.dart';
import 'package:placement/views/faculty_home.dart';
import 'package:placement/views/home.dart';
import 'package:placement/views/registration.dart';
// import 'package:url_launcher/url_launcher.dart';

// import 'package:social_media_buttons/social_media_button.dart';
// import 'package:social_media_buttons/social_media_buttons.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 100, 10, 20),
          child: Form(
            key: controller.formkey,
            child: Column(
              children: [
                Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3KOSc0zV5pnXoTCXKTukWcxDMlmHR2x5cbQ&usqp=CAU'),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  'Placement Management',
                  style: TextStyle(
                    color: Color.fromARGB(255, 197, 0, 0),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    
                  ),
                  
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                // SizedBox(
                //   height: 50,
                //   width: double.infinity,
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(10),
                //     child: Row(
                //       children: [
                //         Expanded(
                //           child: ElevatedButton(
                //             onPressed: () {
                //               controller.changeUser(0);
                //             },
                //             child: const Text('Student'),
                //           ),
                //         ),
                //         Expanded(
                //           child: ElevatedButton(
                //             onPressed: () {
                //               controller.changeUser(1);
                //             },
                //             child: const Text('Company'),
                //           ),
                //         ),
                //         Expanded(
                //           child: ElevatedButton(
                //             onPressed: () {
                //               controller.changeUser(2);
                //             },
                //             child: const Text('Faculty'),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 40,
                // ),
                // Text(
                //   controller.title[controller.index],
                //   style: const TextStyle(
                //     fontSize: 22,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(120))),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email';
                        }
                      },
                      controller: controller.emailController,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(120))),
                      ),
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(120))),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password';
                        }
                      },
                      controller: controller.passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(120))),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          controller.signIn();
                        },
                        child: const Text('Login'),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.grey))))),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Havent registered?'),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const RegistrationView(
                            // user: controller.title[controller.index],
                            ));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                  
                ),
                // Center(
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 140),
                //     child: Row(
                //      children: [
                //       IconButton(onPressed:_launchURL, icon:Icon(Icons.facebook_rounded),iconSize: 30,color: Colors.blue,),
                //      TextButton(onPressed: (){}, child: Text('Facebook'))
                //      ], 
                     
                //     ),
                //   ),
                // )
                // Row(
                //   children: const [
                //     SocialMediaButton.facebook(
                //       url: "https://www.facebook.com/mesaimat1",
                //       size: 35,
                //       color: Colors.blue,
                //     ),
                    
                //     Icon(SocialMediaIcons.instagram),

                //   ],
                // )
              ],
            ),
          ),
        ),
      );
    });
  }
}
// _launchURL() async {
//   const url = 'https://flutter.io';
//   // ignore: deprecated_member_use
//   if (await canLaunch(url)) {
//     // ignore: deprecated_member_use
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }