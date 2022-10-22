// import 'package:flutter/material.dart';
// import 'package:placement/views/company_register.dart';

// class CLogin extends StatefulWidget {
//   const CLogin({Key? key}) : super(key: key);

//   @override
//   State<CLogin> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<CLogin> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'PLACEMENT MANAGEMENT SYSTEM',
//           style: TextStyle(fontSize: 17),
//         ),
//       ),
//       body: Padding(
//           padding: const EdgeInsets.all(10),
//           child: ListView(
//             children: <Widget>[
//               // Container(
//               //     alignment: Alignment.center,
//               //     padding: const EdgeInsets.only(top: 10),
//               //     child: const Text(
//               //       'PLACEMENT MANAGEMENT SYSTEM',
//               //       style: TextStyle(
//               //           color: Colors.orange,
//               //           fontWeight: FontWeight.w500,
//               //           fontSize: 2),
//               //     )),
//               Container(
//                   alignment: Alignment.center,
//                   padding: const EdgeInsets.all(10),
//                   child: const Text(
//                     'Sign up',
//                     style: TextStyle(fontSize: 20),
//                   )),
//               Container(
//                 padding: const EdgeInsets.all(10),
//                 child: TextField(
//                   controller: nameController,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'User Name',
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//                 child: TextField(
//                   obscureText: true,
//                   controller: passwordController,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Password',
//                   ),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {
//                   //forgot password screen
//                 },
//                 child: const Text(
//                   'Forgot Password',
//                   style: TextStyle(color: Colors.blue),
//                 ),
//               ),
//               Container(
//                   height: 50,
//                   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                   child: ElevatedButton(
//                     child: const Text('Login'),
//                     onPressed: () {
//                       print(nameController.text);
//                       print(passwordController.text);
//                     },
//                   )),
//               Row(
//                 children: <Widget>[
//                   const Text('Does not have account?'),
//                   TextButton(
//                     child: const Text(
//                       'Sign in',
//                       style: TextStyle(fontSize: 20, color: Colors.blue),
//                     ),
//                     onPressed: () {
//                       Navigator.of(context)
//                           .push(MaterialPageRoute(builder: (ctx) {
//                         return CRegistration();
//                       }));
//                     },
//                   )
//                 ],
//                 mainAxisAlignment: MainAxisAlignment.center,
//               ),
//             ],
//           )),
//     );
//   }
// }
