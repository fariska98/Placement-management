import 'package:flutter/material.dart';
import 'package:placement/Student_register.dart';
import 'package:placement/views/home.dart';
import 'package:placement/views/student_home.dart';



void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: HomeScreen(),
    );
  }
}