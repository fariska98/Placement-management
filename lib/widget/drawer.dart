import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/details.dart';
import 'package:placement/controller/login_controller.dart';
import 'package:placement/views/display_details.dart';
import 'package:placement/views/display_notification.dart';
import 'package:placement/views/login.dart';
import 'package:placement/views/profile.dart';
import 'package:placement/widget/add_notification.dart';

// FutureBuilder(builder: (context,snapshot){
//       return
//     });

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: (context, snapshot) {
      return Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    NetworkImage('https://wallpaperaccess.com/full/202976.jpg'),
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Center(
                      child: Text(
                          Get.find<DetailsController>().details['email'][0]),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(Get.find<DetailsController>().details['name']),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(Get.find<DetailsController>().details['email']),
                ],
              ),
            ),
            Visibility(
              visible: Get.find<DetailsController>().isStudent,
              child: ListTile(
                onTap: () {
                  Get.to(() => const DisplayDetails());
                },
                title: const Text('Profile'),
              ),
            ),
            const ListTile(
              title: Text('My Applications'),
            ),
            ListTile(
              onTap: () {
                Get.to(() => const AddNotification());
              },
              title: const Text('Add Notification'),
            ),
            ListTile(
              onTap: () {
                Get.to(() => const DisplayNotification());
              },
              title: const Text('Display Notification'),
            ),
            ListTile(
              onTap: () async {
                 await Get.find<DetailsController>().clearValues();
                Get.find<LoginController>().signout();
                
                Get.to(() => const LoginView());
              },
              title: const Text('Log out'),
            ),
          ],
        ),
      );
    });
  }
}

class CompanyDrawerWidget extends StatelessWidget {
  const CompanyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image:
                  NetworkImage('https://wallpaperaccess.com/full/202976.jpg'),
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 30,
                  child: Center(
                    child: Text('F'),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Company Name'),
                SizedBox(
                  height: 5,
                ),
                Text('company@gmail.com'),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const CompanyProfileView());
            },
            title: const Text('Profile'),
          ),
          const ListTile(
            title: Text('Add Job Notification'),
          ),
          const ListTile(
            title: Text('Students Details'),
          ),
          ListTile(
            onTap: () {
              Get.back();
            },
            title: const Text('Log out'),
          ),
        ],
      ),
    );
  }
}

class FacultyDrawerWidget extends StatelessWidget {
  const FacultyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image:
                  NetworkImage('https://wallpaperaccess.com/full/202976.jpg'),
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 30,
                  child: Center(
                    child: Text('F'),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Name'),
                SizedBox(
                  height: 5,
                ),
                Text('admin@gmail.com'),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const CompanyProfileView());
            },
            title: const Text('Profile'),
          ),
          const ListTile(
            title: Text('Company Details'),
          ),
          const ListTile(
            title: Text('Students Details'),
          ),
          const ListTile(
            title: Text('Job Listing'),
          ),
          ListTile(
            onTap: () {
             
              Get.back();
            },
            title: const Text('Log out'),
          ),
        ],
      ),
    );
  }
}
