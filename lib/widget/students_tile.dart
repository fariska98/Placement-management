import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetStudents extends StatelessWidget {
  final String documentId;
  GetStudents({required this.documentId});
  @override
  Widget build(BuildContext context) {
    //get collection
    CollectionReference users =
        FirebaseFirestore.instance.collection("students");

    return FutureBuilder<DocumentSnapshot>(
        future: users.doc(documentId).get(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Container(
              color: Color.fromARGB(255, 230, 180, 238),
              
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name:${data["name"]}"),
                    Text("Email:${data["email"]}"),
                    Text("Contact:${data["contact"]}"),
                    Text("Gender:${data["gender"]}"),
                    Text("DOB:${data["dob"]}"),
                    Text("Address:${data["address"]}"),
                    Text("Department:${data["department"]}"),
                    Text("Passout:${data["passout"]}"),
                    Text("CGPA:${data["cgpa"]}"),
                    Text("Backlog:${data["backlog"]}"),
                    Text("UG Stream:${data["ugstream"]}"),
                    Text("College:${data["college"]}"),
                    Text("UG CGPA:${data["ug cgpa"]}"),
                    Text("HS Stream:${data["hs stream"]}"),
                    Text("HS School:${data["hs school"]}"),
                    Text("HS Persentage:${data["hs %"]}"),
                    Text("SSLC Stream:${data["sslc stream"]}"),
                    Text("SSLC School:${data["sslc school"]}"),
                    Text("SSLC Persentage:${data["sslc %"]}"),
                    ],
                  ),
                ),
              ),
            );
          }
          return Text('loading');
        }));
  }
}