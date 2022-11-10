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
              color: Color.fromARGB(255, 230, 180, 238),
              
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Company Name:${data["Name"]}",style: TextStyle(fontSize: 18),),
                      Text("Job Title:${data["title"]}",style: TextStyle(fontSize: 18)),
                      Text("Discription:${data["discription"]}",style: TextStyle(fontSize: 18)),
                      Text("Passout:${data["passout"]}",style: TextStyle(fontSize: 18)),
                       Text("Backpapers:${data["backpapers"]}",style: TextStyle(fontSize:18)),
                        Text("Salary:${data["salary"]}",style: TextStyle(fontSize: 18)),
                         Text("Location:${data["location"]}",style: TextStyle(fontSize: 18)),
                          Text("Link:${data["link"]}",style: TextStyle(fontSize: 18))
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