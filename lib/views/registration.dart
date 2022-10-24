import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/login_controller.dart';
import 'package:placement/views/login.dart';

class RegistrationView extends StatelessWidget {
  final String user;
  const RegistrationView({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GetBuilder<LoginController>(
      builder: (controller) {
        return SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 100, 10, 20),
          child: Column(
            children: [
              const Text(
                'Registration',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              user == 'Student'
                  ? const StudentRegistration()
                  : const CompanyRegistration(),
            ],
          ),
        );
      },
    ));
  }
}

class CompanyRegistration extends StatelessWidget {
  const CompanyRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TextFormField(
        //   decoration: const InputDecoration(
        //     prefixIcon: Icon(Icons.account_circle),
        //     hintText: "Company Name",
        //     border: OutlineInputBorder(),
        //   ),
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // TextFormField(
        //   decoration: const InputDecoration(
        //     prefixIcon: Icon(Icons.account_circle),
        //     hintText: "HR Name",
        //     border: OutlineInputBorder(),
        //   ),
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // TextFormField(
        //   //textInputAction: TextInputType.phone,
        //   keyboardType: TextInputType.phone,
        //   decoration: const InputDecoration(
        //     prefixIcon: Icon(Icons.account_circle),
        //     hintText: "Phone No",
        //     border: OutlineInputBorder(),
        //   ),
        // ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.mail_outline_rounded),
            hintText: "Email",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.lock),
            hintText: "Enter password",
            suffixIcon: Icon(Icons.visibility),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.lock),
            hintText: "Re-Enter password",
            suffixIcon: Icon(Icons.visibility),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(onPressed: () async {}, child: const Text("Submit")),
      ],
    );
  }
}

class StudentRegistration extends StatelessWidget {
  const StudentRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TextFormField(
        //   decoration: const InputDecoration(
        //     prefixIcon: Icon(Icons.account_circle),
        //     hintText: "First Name",
        //     border: OutlineInputBorder(),
        //   ),
        //   onChanged: (value) {},
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // TextFormField(
        //   decoration: const InputDecoration(
        //     prefixIcon: Icon(Icons.account_circle),
        //     hintText: "Last Name",
        //     border: OutlineInputBorder(),
        //   ),
        //   onChanged: (value) {},
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        // TextFormField(
        //   //textInputAction: TextInputType.phone,
        //   keyboardType: TextInputType.phone,
        //   decoration: const InputDecoration(
        //     prefixIcon: Icon(Icons.account_circle),
        //     hintText: "Phone No",
        //     border: OutlineInputBorder(),
        //   ),
        //   onChanged: (value) {},
        // ),
        // const SizedBox(
        //   height: 10,
        // ),
        TextFormField(
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
        TextFormField(
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
                onPressed: () async {
                  Get.to(() => const LoginView());
                },
                child: const Text("Submit"))),
      ],
    );
  }
}
