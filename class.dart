

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:first(),));

}
class first extends StatefulWidget {
  first({super.key});

  @override
  State<first> createState() => _State();
}

class _State extends State<first> {
  List<Student> rit=[];

  TextEditingController name = TextEditingController();
  TextEditingController Rollnumber = TextEditingController();
  TextEditingController ws = TextEditingController();
  TextEditingController cs = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FirstPage')
      ),
      body:Column(children: [
        Container(
          child: TextField(
            controller: name,
            decoration: InputDecoration(
              hintText: 'Enter name',
              labelText: 'Name'
            ),
          ),
        ),
        SizedBox(height: 10,),
    Container(child:
    TextField(
      controller: Rollnumber,
    decoration: InputDecoration(
    hintText: 'Enter rollno.',
    labelText: 'Roll number',
    ),
    ),
    ),
        SizedBox(height: 10,),
        Container(
          child: TextField(
            controller: ws,
    decoration: InputDecoration(
    hintText: 'ws marks',
    labelText: 'Ws',

          ),
        )
        ),
        SizedBox(height: 10,),
        Container(child:
        TextField(
          controller: cs,
          decoration: InputDecoration(
            hintText: 'csMarks.',
            labelText: 'cs',
          ),
        ),

        ),
        ElevatedButton(onPressed:(){
          Student rit =new Student();
          rit.name=name.text;
          rit.roll=Rollnumber.text;
          rit.ws=ws.text;
          rit.cs=cs.text;
          print(rit);

        }, child: Icon(Icons.add))
    ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.navigate_next),),
    );
  }
}
class Student {
  String name = "";
  String roll = "";
  String ws = "";
  String cs = "";

  @override
  String toString() {
    // TODO: implement toString
    return  name;
  }

//
//
// }
// //
// //
// //
// //
// //
// //
// //
// //
// //
// // import 'package:flutter/material.dart';
// // import 'package:flutter_country_picker/flutter_country_picker.dart';
// //
// // void main() {
// //   runApp(MaterialApp(
// //     debugShowCheckedModeBanner: false,
// //     theme: ThemeData.dark().copyWith(
// //       scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
// //     ),
// //     home: Phonenumber(),
// //   ));
// // }
// //
// // class Phonenumber extends StatefulWidget {
// //   const Phonenumber({Key? key}) : super(key: key);
// //
// //   @override
// //   State<Phonenumber> createState() => _PhonenumberState();
// // }
// //
// // class _PhonenumberState extends State<Phonenumber> {
// //   TextEditingController phoneController = TextEditingController();
// //   Country? _selectedCountry = Country.US; // Default selected country
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Phonenumber'),
// //         centerTitle: true,
// //       ),
// //       body: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Padding(
// //             padding: EdgeInsets.symmetric(horizontal: 25),
// //             child: Column(
// //               children: [
// //                 CountryPickerDropdown(
// //                   initialValue: 'US',
// //                   itemBuilder: _buildDropdownItem,
// //                   onValuePicked: (Country country) {
// //                     setState(() {
// //                       _selectedCountry = country;
// //                     });
// //                   },
// //                 ),
// //                 SizedBox(height: 20),
// //                 TextField(
// //                   controller: phoneController,
// //                   keyboardType: TextInputType.number,
// //                   decoration: InputDecoration(
// //                     hintText: "Enter your phone number",
// //                     suffixIcon: Icon(Icons.phone),
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(20),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           SizedBox(height: 20),
// //           ElevatedButton(
// //             onPressed: () {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(builder: (context) => OTPScreen()),
// //               );
// //             },
// //             child: Text("Verify phone number"),
// //           ),
// //           SizedBox(height: 50),
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               ElevatedButton(
// //                 onPressed: () {},
// //                 child: Text(
// //                   'Continue with Google',
// //                   style: TextStyle(
// //                     color: Colors.lightBlue,
// //                     fontSize: 20,
// //                   ),
// //                 ),
// //               ),
// //               SizedBox(width: 10),
// //               Icon(Icons.g_mobiledata_rounded, color: Colors.red),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   Widget _buildDropdownItem(Country country) => Container(
// //         child: Row(
// //           children: <Widget>[
// //             CountryPickerUtils.getDefaultFlagImage(country),
// //             SizedBox(width: 8.0),
// //             Text("${country.name} (${country.isoCode})"),
// //           ],
// //         ),
// //       );
// // }
// //
// // class OTPScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('OTP Screen'),
// //       ),
// //       body: Center(
// //         child: Text('OTP Screen'),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Profile Page'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CircleAvatar(
//                 radius: 50,
//                 backgroundImage: AssetImage('assets/profile_picture.png'),
//               ),
//               SizedBox(height: 16),
//               Text('Krrish Prajapati'),
//               SizedBox(height: 16),
//               _buildSection('Email'),
//               _buildSection('Gender'),
//               _buildSection('Date of Birth'),
//               _buildSection('Emergency Contact'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSection(String title) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 8),
//         Text('Information goes here'),
//         SizedBox(height: 16),
//       ],
//     );
//   }
// }