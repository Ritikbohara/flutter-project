
import 'dart:html';
import 'dart:js';
import 'package:firstaap/Bookingpage.dart';
import 'package:firstaap/User.dart';
import 'package:firstaap/number.dart';
import 'package:firstaap/otpscreen.dart';
import 'package:firstaap/ritik.dart';

// import 'login.dart';
import 'package:flutter/material.dart';






void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Registration(),
        'phonenumber':(context)=>Phonenumber(),
        'OTPScreen':(context)=>OTPScreen(),
        'UserRegistrationPage':(context)=>UserRegistrationPage(),
        'Bookingpage':(context)=>Bookingpage()


      },
    );
  }
}
