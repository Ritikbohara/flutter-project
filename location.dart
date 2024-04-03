// import 'package:flutter/material.dart';
//
// class LocationInputScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Enter Locations'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Starting Location',
//                 hintText: 'Enter starting location',
//                 prefixIcon: Icon(Icons.location_on),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Destination Location',
//                 hintText: 'Enter destination location',
//                 prefixIcon: Icon(Icons.location_on),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Add functionality to handle input data
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: LocationInputScreen(),
//   ));
// }
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main(){
  runApp(MaterialApp(home: Locationpage(),debugShowCheckedModeBanner: false,));
}
class Locationpage extends StatefulWidget {
  const Locationpage({super.key});

  @override
  State<Locationpage> createState() => _LocationpageState();
}

class _LocationpageState extends State<Locationpage> {
  getCurrentLocation()async{
    LocationPermission permission=await Geolocator.checkPermission();
    if(permission==LocationPermission.denied || permission==LocationPermission.deniedForever){
      log('Location denied' as num);
      LocationPermission ask=await Geolocator.requestPermission();


    }
    else{
      Position currentposition=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      log('Latitude=${currentposition.latitude.toString()}');
      log("Longitude=${currentposition.longitude.toString()}");


    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Enter location'

      ),),
      body: Column(children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Your location',
            labelText: 'Enter your Location',
            prefixIcon: Icon(Icons.gps_fixed),
            border: OutlineInputBorder()


          ),


        ),
        SizedBox(height: 20,),
        TextFormField(
          decoration: InputDecoration(
              hintText: ' destination location',
              labelText: ' Enter destination Location',
              prefixIcon: Icon(Icons.location_on),
              border: OutlineInputBorder()


          ),


        ),
        SizedBox(height: 60,),
        Container(
          height: 40,
          width: 100,
          decoration: ShapeDecoration(color:Colors.blue,
              shape:RoundedRectangleBorder(borderRadius:
              BorderRadius.all(Radius.circular(30)
          )
          )
          ),
          child: ElevatedButton(onPressed: (){
            getCurrentLocation();
          },child:Icon(Icons.arrow_forward,color: Colors.black,) ),
        )

      ],),
    );
  }
}


