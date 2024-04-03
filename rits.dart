// import 'Bookingpage.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(home:Login()));
// }
//
// class Login extends StatelessWidget {
//   const Login({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.dark().copyWith(
//         scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
//       ),
//       home: Scaffold(
//         body: ListView(children: [
//           Login(),
//         ]),
//       ),
//     );
//   }
// }
//
// class Sinup extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           width: 360,
//           height: 800,
//           clipBehavior: Clip.antiAlias,
//           decoration: const ShapeDecoration(
//             color: Color(0xFFFFF8F8),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(15),
//                 bottomRight: Radius.circular(15),
//               ),
//             ),
//           ),
//           child: Stack(
//             children: [
//               Positioned(
//                 left: 27,
//                 top: 291,
//                 child: Container(
//                   width: 312,
//                   height: 48,
//                   decoration: const ShapeDecoration(
//                     color: Colors.black,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(12)),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Enter your name',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 24,
//                 top: 376,
//                 child: Container(
//                   width: 312,
//                   height: 48,
//                   decoration:  ShapeDecoration(
//                     color: Colors.black,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(12)),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Enter your phone number',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 right: 140,
//                 top: 619,
//                 child: Container(
//                   width: 90,
//                   height: 48,
//                   decoration:ShapeDecoration(
//                     color: Colors.blue,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(12)),
//                     ),
//                   ),
//                   child: Center(
//                     child: TextButton(onPressed: (){},
//                       child:Text('Sign In',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 24,
//                 top: 534,
//                 child: Container(
//                   width: 312,
//                   height: 48,
//                   decoration: const ShapeDecoration(
//                     color: Colors.black,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(12)),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Enter your password',
//                         icon: Icon(Icons.password),
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 24,
//                 top: 453,
//                 child: Container(
//                   width: 312,
//                   height: 48,
//                   decoration: const ShapeDecoration(
//                     color: Colors.black,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(12)),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Enter your Email',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: -5,
//                 top: -31,
//                 child: Container(
//                   width: 369,
//                   height: 212,
//                   decoration: const ShapeDecoration(
//                     color: Color(0xFF0CDB07),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(45)),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 54,
//                 top: 721,
//                 child: Text.rich(
//                   TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Already a user? ',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontFamily: 'Inter',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//
//
//                     ],
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//
//               Positioned(
//                 left: 76,
//                 top: 102,
//                 child: Container(
//                   width: 14,
//                   height: 1,
//                   decoration: BoxDecoration(color: const Color(0xFFD9D9D9)),
//                 ),
//               ),
//               Positioned(
//                 left: 66,
//                 top: 108,
//                 child: Container(
//                   width: 228,
//                   height: 115,
//                   decoration: const ShapeDecoration(
//                     image: DecorationImage(
//                       image:AssetImage('car1.png'),
//                       fit: BoxFit.fill,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(25)),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 bottom:47,
//                 right: 56,
//                 child:TextButton( // Login Now Button
//                   onPressed: () {
//                     // Add login functionality here
//                   },
//
//                   child: Text('Login Now',style: TextStyle(color:Colors.blue,fontSize: 20),),
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//
//       ],
//     );
//   }
// }