
import 'User.dart';
import 'driver.dart';
import 'number.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Registration());
}

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(250, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(
          children: [
            AndroidLarge1(),
          ],
        ),
      ),
    );
  }
}

class AndroidLarge1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        Container(
        width: 350,
        height: 700,
        decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
    ),
    child: Stack(
    children: [
    Container(
    width: 360,
    height: 220,
    decoration: BoxDecoration(
    color: const Color(0xFF000300),
    borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(70),
    bottomRight: Radius.circular(70),
    ),
    ),
    ),
    Positioned(
    left: 70,
    top: 66,
    child: Container(
    width: 200,
    height: 150,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage( 'assets/images/car.png'),
    fit: BoxFit.fill,
    ),
    ),
      child: Image.asset('assets/images/car.png',fit: BoxFit.fill,),

    ),
    ),
      Positioned(top: 400,
          left: 50,
          child:Text(
            'MOVE with Safety',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,

            ),

          )),
      Positioned(bottom: 40,
          left: 10,

          child: Container(
            height: 60,
            width: 330,
            decoration: ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
                )
            ),
            child: Center(child: TextButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Phonenumber()));

            },

            child:Row(
              children: [

                Center(
                  child: Text('GetStarted',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20),



                  ),
                ),
                SizedBox(
                  width: 180,
                ),
                Icon(Icons.arrow_forward,color: Colors.white,)
              ],
            ),
            ),

            ),

          ),

      )


    ],
    ),

    ),
    ],
    );
  }
}






