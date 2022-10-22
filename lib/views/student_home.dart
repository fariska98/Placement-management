import 'package:flutter/material.dart';
import 'package:placement/views/student_login.dart';




class SHomePage extends StatefulWidget {
  const SHomePage({Key? key}) : super(key: key);

  @override
  State<SHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<SHomePage> {
  int currentIndex = 0;
  final PageController controller = PageController();

  List<String> images = [
    "C:/Users/faris/placement/assets/WhatsApp Image 2022-09-17 at 6.21.02 AM - Copy (2).jpeg"
    
    
  ];

  String name='FARIS KA';
  String myEmail='farisabdulrahman33@gmail.com';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("HOME"),),
        drawer: Drawer(
          child: FutureBuilder(
              //  future: _fetch(),
              builder: (context, snapshot) {
            // if (snapshot.connectionState != ConnectionState.done)
            //   return Text("");
            return ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text(
                    name,
                    style: TextStyle(fontSize: 20),
                  ),
                  accountEmail: Text(
                    myEmail,
                    style: TextStyle(fontSize: 16),
                  ),
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                        'https://cdn.pixabay.com/photo/2015/12/01/15/43/black-1072366__340.jpg'),
                  )),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      name[0],
                      style:
                          TextStyle(fontSize: 40.0, color: Colors.pinkAccent),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.pinkAccent,
                  ),
                  title: Text(
                    "View profile",
                    style: TextStyle(fontSize: 16),
                  ),
                  onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => Adminprofile()),
                  //   );
                   },
                  hoverColor: Colors.purpleAccent,
                  enabled: true,
                  trailing: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  thickness: 0.5,
                ),
                Divider(
                  thickness: 0.5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.pinkAccent,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SLogin()),
                    );
                  },
                  trailing: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            );
          }),
        ),
        
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text('Job Notifications',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index % images.length;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset(
                      images[index % images.length],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < images.length; i++)
                buildIndicator(currentIndex == i)
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       IconButton(
          //         onPressed: () {
          //           controller.jumpToPage(currentIndex - 1);
          //         },
          //         icon: Icon(Icons.arrow_back),
          //       ),
          //       IconButton(
          //         onPressed: () {
          //           controller.jumpToPage(currentIndex + 1);
          //         },
          //         icon: Icon(Icons.arrow_forward),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 12 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}