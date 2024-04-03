import 'ritik.dart';
import 'short.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(home:DriverRegistrationPage()));
}



class DriverRegistrationPage extends StatefulWidget {
  @override
  _DriverRegistrationPageState createState() => _DriverRegistrationPageState();
}

class _DriverRegistrationPageState extends State<DriverRegistrationPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _licenseNumberController = TextEditingController();
  String _selectedDocumentType = 'Aadhaar'; // Default document type
  // Add other document types as needed
  List<String> _documentTypes = ['Aadhaar', 'Pan Card', 'Driving License'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Driver Name'),
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: _phoneNumberController,
                decoration: InputDecoration(labelText: 'Phone Number'),
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
              SizedBox(height: 10.0),
              TextField(
                controller: _licenseNumberController,
                decoration: InputDecoration(labelText: 'License Number'),
              ),
              SizedBox(height: 10.0),
              DropdownButtonFormField(
                value: _selectedDocumentType,
                items: _documentTypes.map((String type) {
                  return DropdownMenuItem(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedDocumentType = value!;
                  });
                },
                decoration: InputDecoration(labelText: 'Document Type'),
              ),
              SizedBox(height: 10.0),
              Text('Upload Document File:', style: TextStyle(fontSize: 16.0)),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  // Implement file upload logic
                },
                child: Text('Choose File'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Registration()));
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
