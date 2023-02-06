import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetCompany extends StatelessWidget {
  final String documentId;
  GetCompany({required this.documentId});
  @override
  Widget build(BuildContext context) {
    //get collection
    CollectionReference users =
        FirebaseFirestore.instance.collection("company");

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
                      Text("Company Name:${data["name"]}",style: TextStyle(fontSize: 18),),
                      Text("Email:${data["email"]}",style: TextStyle(fontSize: 18)),
                      Text("H R Name:${data["HRName"]}",style: TextStyle(fontSize: 18)),
                      Text("Conatact:${data["contact"]}",style: TextStyle(fontSize: 18)),
                       Text("Address:${data["Adress"]}",style: TextStyle(fontSize:18)),
                        // Text("Salary:${data["salary"]}",style: TextStyle(fontSize: 18)),
                        //  Text("Location:${data["location"]}",style: TextStyle(fontSize: 18)),
                        //   Text("Link:${data["link"]}",style: TextStyle(fontSize: 18))
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