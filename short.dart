import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp6(),
  ));
}

class MyApp6 extends StatefulWidget {
  const MyApp6({super.key});

  @override
  State<MyApp6> createState() => _MyApp6State();
}

class _MyApp6State extends State<MyApp6> {
  TextEditingController txtNo = new TextEditingController();
  List<int> lstNos = [];
  String strData="";
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
      ),
      body: Column(children: [
        TextField(controller: txtNo, ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(onPressed: () {
          int no  = int.parse(txtNo.text);
          lstNos.add(no);
          strData = lstNos.length.toString();
          setState(() {

          });
        }, child: Icon(Icons.add_rounded)),
        SizedBox(
          height: 50,
        ),
        ElevatedButton(
            onPressed: () {}, child: Icon(Icons.smart_display_outlined)),
        SizedBox(
          height: 10,
        ),
        Text(
          strData,
          style: TextStyle(fontSize: 30, color: Colors.red),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              counter = 0;
              strData = lstNos[counter].toString();
              setState(() {

              });
            }, child: Icon(Icons.looks_one)),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(onPressed: () {
              counter--;
              strData = lstNos[counter].toString();
              setState(() {

              });
            }, child: Icon(Icons.skip_previous)),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(onPressed: () {
              counter++;
              strData = lstNos[counter].toString();
              setState(() {

              });
            }, child: Icon(Icons.skip_next)),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(onPressed: () {
              counter = lstNos.length-1;
              strData = lstNos[counter].toString();
              setState(() {

              });

            }, child: Icon(Icons.vertical_shades_closed_rounded)),
          ],
        )
      ]),
    );
  }
}

class MyApp5 extends StatefulWidget {
  MyApp5({super.key});

  @override
  State<MyApp5> createState() => _MyApp5State();
}

class _MyApp5State extends State<MyApp5> {
  TextEditingController txt = new TextEditingController();
  String strVar = "This is a text";
  double txtFontSize = 50.0;
  Color bgColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(title: Text("My App")),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: TextField(
            controller: txt,
            decoration: InputDecoration(labelText: "Enter a text"),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
            onPressed: () {
              strVar = txt.text;

              setState(() {});
            },
            child: Text("Click Me!")),
        SizedBox(
          height: 20.0,
        ),
        Text(
          strVar,
          style: TextStyle(fontSize: txtFontSize),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  txtFontSize = 70.0;
                  setState(() {});
                },
                child: Icon(Icons.add)),
            SizedBox(
              width: 20.0,
            ),
            ElevatedButton(
                onPressed: () {
                  txtFontSize = 20.0;
                  setState(() {});
                },
                child: Icon(Icons.minimize)),
            SizedBox(
              width: 20.0,
            ),
            ElevatedButton(
                onPressed: () {
                  bgColor = Colors.yellow;
                  setState(() {});
                },
                child: Icon(Icons.change_circle))
          ],
        ),
      ]),
    );
  }
}

class MyApp4 extends StatefulWidget {
  const MyApp4({super.key});

  @override
  State<MyApp4> createState() => _MyApp4State();
}

class _MyApp4State extends State<MyApp4> {
  String strTxt = "This is simple text";
  Color clrBack = Colors.white10;
  bool chkValue = true;
  bool switchValue = true;
  double sliderValueRed = 10.0;
  double sliderValueGreen = 10.0;
  double sliderValueBlue = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrBack,
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          Text(strTxt),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              onPressed: () {
                strTxt = "";
                clrBack = Colors.green;
                setState(() {});
              },
              child: Text("Change Text")),
          Row(
            children: [
              Text("Red/Blue"),
              SizedBox(width: 10.0),
              Checkbox(
                value: chkValue,
                onChanged: (value) {
                  print(value);
                  chkValue = value!;
                  if (switchValue == true) {
                    if (value == true) {
                      clrBack = Colors.red;
                    } else {
                      clrBack = Colors.black45;
                    }
                  }
                  setState(() {});
                },
              ),
            ],
          ),
          Switch(
            value: switchValue,
            onChanged: (value) {
              switchValue = value!;
              print(value);
              setState(() {});
            },
          ),
          Slider(
            value: sliderValueRed,
            thumbColor: Colors.red,
            onChanged: (value) {
              clrBack = Color.fromRGBO(sliderValueRed.toInt(),
                  sliderValueGreen.toInt(), sliderValueBlue.toInt(), 1.0);
              print(value);

              sliderValueRed = value!;
              setState(() {});
            },
            min: 0,
            max: 255,
          ),
          SizedBox(
            height: 20.0,
          ),
          Slider(
            value: sliderValueGreen,
            thumbColor: Colors.green,
            onChanged: (value) {
              print(value);
              clrBack = Color.fromRGBO(sliderValueRed.toInt(),
                  sliderValueGreen.toInt(), sliderValueBlue.toInt(), 1.0);

              sliderValueGreen = value!;
              setState(() {});
            },
            min: 0,
            max: 255,
          ),
          SizedBox(
            height: 20.0,
          ),
          Slider(
            value: sliderValueBlue,
            thumbColor: Colors.blue,
            onChanged: (value) {
              clrBack = Color.fromRGBO(sliderValueRed.toInt(),
                  sliderValueGreen.toInt(), sliderValueBlue.toInt(), 1.0);

              print(value);
              sliderValueBlue = value!;
              setState(() {});
            },
            min: 0,
            max: 255,
          )
        ]),
      ),
    );
  }
}

class MyApp3 extends StatefulWidget {
  const MyApp3({super.key});

  @override
  State<MyApp3> createState() => _MyApp3State();
}

class _MyApp3State extends State<MyApp3> {
  String str = "Static text";
  Color clr = Colors.yellow;
  TextEditingController txt1 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr,
      appBar: AppBar(title: Text("My App")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: txt1,
              decoration: InputDecoration(labelText: "Enter a name"),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {});
                str = txt1.text;
                clr = Colors.blue;
                setState(() {});
              },
              child: Text("Show Text")),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: clr,
            child: Text(
              str,
              style: TextStyle(color: Colors.red, fontSize: 30.0),
            ),
          )
        ],
      ),
    );
  }
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Row(children: [
        Container(
          child: Text("1"),
          color: Colors.red,
          padding: EdgeInsets.all(30),
        ),
        Container(
          child: Text("2"),
          color: Colors.amber,
          padding: EdgeInsets.all(30),
        ),
        Container(
          child: Text("3"),
          color: Colors.blue,
          padding: EdgeInsets.all(30),
        ),
      ]),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),
      body: Center(
          child: TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.call),
              label: Text("Call Me.!!"))),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarm),
        onPressed: () {},
      ),
    );
  }
}

