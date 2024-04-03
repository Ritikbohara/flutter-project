// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(MaterialApp(
// //     home: BookARidePage(),
// //   ));
// // }
// //
// // class BookARidePage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Book a Ride'),
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             flex: 3,
// //             child: Container(
// //               width: double.infinity,
// //               height: 400, // Adjusted height for simplicity
// //               child: Image.asset('asset/images/map.jpg',
// //                 // Path to your map image
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //           ),
// //           Expanded(
// //             flex: 3,
// //             child: Padding(
// //               padding: EdgeInsets.all(16),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.stretch,
// //                 children: [
// //                   TextField(
// //                     decoration: InputDecoration(
// //                       labelText: 'Choose pickup Location',
// //                     ),
// //                   ),
// //                   SizedBox(height: 16),
// //                   TextField(
// //                     decoration: InputDecoration(
// //                       labelText: 'Choose Drop Location',
// //                     ),
// //                   ),
// //                   SizedBox(height: 16),
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       ScaffoldMessenger.of(context).showSnackBar(
// //                         SnackBar(content: Text('Processing Data')),
// //                       );
// //                     },
// //                     child: Text('Book a Ride'),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //       bottomNavigationBar: BottomAppBar(
// //         child: Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceAround,
// //           children: [
// //             IconButton(
// //               onPressed: () {},
// //               icon: Icon(Icons.home),
// //             ),
// //             IconButton(
// //               onPressed: () {},
// //               icon: Icon(Icons.message),
// //             ),
// //             IconButton(
// //               onPressed: () {},
// //               icon: Icon(Icons.details),
// //             ),
// //             IconButton(
// //               onPressed: () {},
// //               icon: Icon(Icons.person),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
// import 'package:firstaap/aditya.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MaterialApp(home:Bookingpage(),));
// }
// class Bookingpage extends StatefulWidget {
//   const Bookingpage({super.key});
//
//   @override
//   State<Bookingpage> createState() => _BookingpageState();
// }
//
// class _BookingpageState extends State<Bookingpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(preferredSize:Size.fromHeight(50), child:AppBar(
//         flexibleSpace: Column(mainAxisAlignment:MainAxisAlignment.end,
//           children: [Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.white,width: 2.0),
//               )
//               ),
//               child: TextField(decoration: InputDecoration(hintText: 'Search',suffixStyle: TextStyle(color: Colors.white,fontSize:200),
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.all(10.0),suffixIcon: Icon(Icons.search),),),
//             ),
//           )
//           ],),
//
//
//       ),),
//     body: MyApp(),
//     //   body: Padding(
//     //
//     //     padding: const EdgeInsets.all(20),
//     //
//     //     child: SingleChildScrollView(child:Column(children: [Container( height: 500,
//     //       width: double.infinity,
//     //       child: Image.asset('asset/images/map.jpg'),
//     //
//     //
//     //     ),
//     //
//     //       Container(height: 70,
//     // width: double.infinity,
//     // child: TextButton(onPressed: (){},child:Container(height: 50,width: 300,decoration: ShapeDecoration(color:Colors.blue,shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))
//     // )
//     // ),
//     //
//     // child: Center(
//     // child: Text('Allow the destrection',style: TextStyle(color: Colors.white,fontSize:20),
//     // ),
//     //
//     // ),
//     //
//     //
//     //
//     // ),
//     //
//     //       // Container(height: 50,
//     //       // width: double.infinity,
//     //       // child: TextButton(onPressed: (){},child:Container(height: 50,width: 300,decoration: ShapeDecoration(color:Colors.blue,shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))
//     //       // )
//     //       // ),
//     //       //
//     //       //   child: Center(
//     //       //     child: Text('Allow the destrection',style: TextStyle(color: Colors.white,fontSize:20),
//     //       //     ),
//     //       //   ),
//     //       //
//     //       // ) ,
//     //       //
//     //       // ),
//     //       ),
//     //
//     //     ),SizedBox( height: 5),
//     //       Container(height: 70,
//     //         width: double.infinity,
//     //         child: TextButton(onPressed: (){},child:Container(height: 70,width:double.infinity,
//     //
//     //         decoration: ShapeDecoration(color:Colors.blue,shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(20)) )
//     //         ),
//     // child: Center(child: Text('Deny the discrption',style: TextStyle(color: Colors.white,fontSize: 20),)),
//     //
//     //         ) ,    ),),
//     //       Container(height: 50,
//     //           width: double.infinity,
//     //         decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)))),
//     //       ),
//     //
//     //
//     //       BottomAppBar(
//     //         child:Row(
//     //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //           children: [
//     //             IconButton(onPressed:(){}, icon:Icon(Icons.home,)),
//     //             IconButton(onPressed:(){}, icon:Icon(Icons.message,)),
//     //             IconButton(onPressed:(){}, icon:Icon(Icons.details,)),
//     //             IconButton(onPressed:(){}, icon:Icon(Icons.person,)),
//     //             IconButton(onPressed:(){}, icon:Icon(Icons.account_circle,))
//     //           ],
//     //         ) ,
//     //       )
//     // ]
//     //
//     //     ),
//     //
//     //   )
//     //   )
//     );
//
//
//   }
// }

import 'dart:developer';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MaterialApp(
    home: (Bookingpage()),
    debugShowCheckedModeBanner: false,
  ));
}

class Bookingpage extends StatefulWidget {
  const Bookingpage({super.key});

  @override
  State<Bookingpage> createState() => BookingRaidpage();
}

class BookingRaidpage extends State<Bookingpage> {
  getCurrentLocation()async{
    LocationPermission permission=await Geolocator.checkPermission();
    if(permission==LocationPermission.denied || permission==LocationPermission.deniedForever){
      log("Location denied");
      LocationPermission ask=await Geolocator.requestPermission();

    }
    else{
      Position currentposition=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      log("Latitude=${currentposition.latitude.toString()}");
      log("longitude=${currentposition.longitude.toString()}");

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Page"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  ),
                  Container(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(

                        decoration: InputDecoration(
                            hintText: "Search here" , prefix: Icon(Icons.search)

                        )
                        ,
                      ),
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/map.jpg",
                      height: 500,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    child: TextButton(onPressed: (){getCurrentLocation();},child:
                    Container(height: 50,width: 400,
                      decoration: ShapeDecoration(color:Colors.blue ,
                          shape: RoundedRectangleBorder(borderRadius:
                          BorderRadius.all(Radius.circular(30)))
                      ),
                      child: Center(child:
                      Text('Enter your location',style:
                      TextStyle(color: Colors.white,fontSize:20)
                      )),
                    ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    child: TextButton(onPressed: (){},child:
                    Container(height: 50,width: 400,
                      decoration: ShapeDecoration(color:Colors.blue ,
                          shape: RoundedRectangleBorder(borderRadius:
                          BorderRadius.all(Radius.circular(30)))
                      ),
                      child: Center(child:
                      Text('Enter Destination',style:
                      TextStyle(color: Colors.white,fontSize:20)
                      )),
                    ),
                    ),
                  ),
                  BottomAppBar(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed:(){},  icon:Icon(Icons.home)),
                        IconButton(onPressed:(){}, icon:Icon(Icons.message,)),
                        IconButton(onPressed:(){}, icon:Icon(Icons.details,)),
                        IconButton(onPressed:(){}, icon:Icon(Icons.location_on_outlined,)),
                        IconButton(onPressed:(){}, icon:Icon(Icons.account_circle,))


                      ],

                    ),



                  ),
                ]
            ),
          )
      ),
    );
  }
}

//
//
//
//
//
//
//
//
//
//
