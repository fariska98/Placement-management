import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GetDetails extends StatelessWidget {
  final String documentId;
  const GetDetails({super.key, required this.documentId});
  @override
  Widget build(BuildContext context) {
    //get collection
    var email = FirebaseAuth.instance.currentUser!.email;
    CollectionReference users = FirebaseFirestore.instance.collection(email!);

    return FutureBuilder<DocumentSnapshot>(
        future: users.doc(documentId).get(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Container(
              color: Colors.grey,
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
            );
          }
          return const Text('loading');
        }));
  }
}
