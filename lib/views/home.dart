import 'package:flutter/material.dart';
import 'package:placement/views/admin_login.dart';
import 'package:placement/company_login.dart';
import 'package:placement/views/student_login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Placement Management System'),
      ),
      body: Container(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return SLogin();
                    }));
                  },
                  child: Text('STUDENT')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return CLogin();
                    }));
                  },
                  child: Text('COMPANY')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return ALogin();
                    }));
                  },
                  child: Text('  ADMIN  '))
            ],
          ),
        ),
      )),
    );
  }
}
