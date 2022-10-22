import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/views/profile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

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
                Text('Faris'),
                SizedBox(
                  height: 5,
                ),
                Text('faris@gmail.com'),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Get.to(() => const ProfileView());
            },
            title: const Text('Profile'),
          ),
          const ListTile(
            title: Text('My Applications'),
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
