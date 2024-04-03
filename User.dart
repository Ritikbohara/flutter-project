import 'Bookingpage.dart';
import 'package:flutter/material.dart';


void Main() {
  runApp(MaterialApp(home: UserRegistrationPage()));
}

class UserRegistrationPage extends StatefulWidget {
  @override
  _UserRegistrationPageState createState() => _UserRegistrationPageState();
}

class _UserRegistrationPageState extends State<UserRegistrationPage> {
  TextEditingController _FirstnameController = TextEditingController();
  TextEditingController _LastnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Name'),
      ),
      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _FirstnameController,
                decoration: InputDecoration(labelText: 'FirstName'),
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: _LastnameController,
                decoration: InputDecoration(labelText: 'LastName'),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Bookingpage()));

                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }



}
