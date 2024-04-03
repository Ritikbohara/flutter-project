 import 'otpscreen.dart';
 import 'package:flutter/material.dart';

 void main()  {

   runApp( MaterialApp(debugShowCheckedModeBanner: false,
     theme:ThemeData.dark().copyWith(
       scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),),
         home: Phonenumber()));
 }

 class Phonenumber extends StatefulWidget {
   const Phonenumber({super.key});

   @override
   State<Phonenumber> createState() => _PhonenumberState();
 }

 class _PhonenumberState extends State<Phonenumber> {
   TextEditingController PhoneController = TextEditingController();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
         title: Text('Phonenumber'),
         centerTitle: true,
       ),
       body: Column(mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 25),
           child: Column(
             children: [
               TextField(
                 controller: PhoneController,
                 keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                   hintText: " +91  |   Enter your phone number",
                   suffixIcon: Icon(Icons.phone),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                   )
                 ),
                 ),
             ]
           )

               ),


           SizedBox(height: 20,),
           Positioned(top: 800,
             width: 80,
             child:
             ElevatedButton(onPressed:(){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPScreen()));
             },
             child: Text("verfiy phone number"),)
             ,


           ),

         SizedBox(height: 50,),
         Row(
           children: [
             Center(

                 child: ElevatedButton(onPressed:(){},child: Text('continue with google',style: TextStyle(color: Colors.lightBlue,fontSize: 20,),)
                 ),
               ),


     Icon(Icons.g_mobiledata_rounded,color: Colors.red,)
     ],
         ),


 ]
     )

     );
   }
 }
