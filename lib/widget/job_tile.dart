import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetNotification extends StatelessWidget {
  final String documentId;
  GetNotification({required this.documentId});
  @override
  Widget build(BuildContext context) {
    //get collection
    CollectionReference users =
        FirebaseFirestore.instance.collection('Jobs');

    return FutureBuilder<DocumentSnapshot>(
        future: users.doc(documentId).get(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Container(
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Company Name:${data["Name"]}"),
                  Text("Job Title:${data["title"]}"),
                  Text("Discription:${data["discription"]}"),
                  Text("Passout:${data["passout"]}"),
                   Text("Backpapers:${data["backpapers"]}"),
                    Text("Salary:${data["salary"]}"),
                     Text("Location:${data["location"]}"),
                      Text("Link:${data["link"]}")
                ],
              ),
            );
          }
          return Text('loading');
        }));
  }
}