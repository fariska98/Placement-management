import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placement/controller/details.dart';
import 'package:placement/widget/detail_tile.dart';

class DisplayDetails extends StatelessWidget {
  const DisplayDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<DetailsController>(
        builder: (controller){
        return Column(
          children: [
            CircleAvatar(
                radius: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Stack(
                    children: [
                      const Image(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://www.himalmag.com/wp-content/uploads/2019/07/sample-profile-picture.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                        child: Center(
                          child: ClipOval(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                width: 80,
                                height: 20,
                                color: const Color(0xff000000).withOpacity(0.6),
                                child: Icon(
                                  Icons.edit,
                                  size: 17,
                                  color:
                                      const Color(0xffeff2fa).withOpacity(0.7),
                                ),
                                
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                )),
            Text('Details'),
            Expanded(
          child: FutureBuilder(
        future: controller.getdocID(),
        builder: (context, snapshot) {
          return  GetDetails(
                    documentId: controller.docIDs[0],
          );},
      )),
          ],
        );
      }),
    );
  }
}