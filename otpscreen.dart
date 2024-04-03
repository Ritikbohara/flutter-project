import 'User.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
void main(){
  runApp(MaterialApp( debugShowCheckedModeBanner: false,
    theme:ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
  ),
    home: OTPScreen(),
  ));
}


class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController OTPController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
    borderRadius: BorderRadius.circular(8),
  );

  final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),),);

    return Scaffold(
      appBar: AppBar(
        title:
      Text('OTP'),
      centerTitle: true,),
      body: Center(
        child: Column(

          children: [
            SizedBox(height: 50,),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 25),
            //
            //   child: TextField(
            //     controller: OTPController,
            //     keyboardType: TextInputType.phone,
            //     decoration: InputDecoration(
            //       hintText: "Enter OTP",
            //       labelText: 'OTP',
            //       suffixIcon: Icon(Icons.phone),
            //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)
            //
            //     ),
            //
            //   ),
            //
            //
            //
            // ),
            Pinput(
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: focusedPinTheme,
            submittedPinTheme: submittedPinTheme,
            validator: (s) {
            return s == '2222' ? null : 'Pin is incorrect';
            },
            pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            showCursor: true,
            onCompleted: (pin) => print(pin),
            ),
            SizedBox(height: 20,),
            Positioned(
              right: 140,
                top: 50,
                child:Container(
                  width: 200,
                  height: 80,
                  decoration: ShapeDecoration( color:Colors.white,shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20),)),
                ),child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>UserRegistrationPage()));
                },
            child: Text("Verfiy OTP",style: TextStyle(color: Colors.yellow,fontSize: 20,),),
                ),
            ),

        ),
            ],
            ),
      ),
    );
  }
}
