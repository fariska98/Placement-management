
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:placement/models/jobs.dart';
import '../models/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('Jobs');
class FirebaseCrud {
//CRUD method here
}
 Future<Response> addJobs({
  required String companyName,
  required String jobTitle,
  required String discription ,
  required String backPapers,
  required String passoutYear,
  required String salaryRange,
  required String jobLocation,
  required String linkForApply,
  required String companyEmail,
  }) async {

    Response response = Response();
    DocumentReference documentReferencer =
        _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "comapany_name": companyName,
      "job_title": jobTitle,
      "discription" : discription,
      "back_papers" : backPapers,
      "passout_year" :passoutYear,
      "salary_range" :salaryRange,
      "job_location" :jobLocation,
      "link_forapply" :linkForApply,
      "email" :companyEmail
    };

    var result = await documentReferencer
        .set(data)
        .whenComplete(() {
          response.code = 200;
          response.message = "Sucessfully added to the database";
        })
        .catchError((e) {
            response.code = 500;
            response.message = e;
        });

        return response;
  }

  Stream<QuerySnapshot> readJobs() {
    CollectionReference notesItemCollection =
        _Collection;

    return notesItemCollection.snapshots();
  }

  Future<Response> deleteJobs({
    required String docId,
  }) async {
     Response response = Response();
    DocumentReference documentReferencer =
        _Collection.doc(docId);

    await documentReferencer
        .delete()
        .whenComplete((){
          response.code = 200;
          response.message = "Sucessfully Deleted Jobs";
        })
        .catchError((e) {
           response.code = 500;
            response.message = e;
        });

        

   return response;
  }