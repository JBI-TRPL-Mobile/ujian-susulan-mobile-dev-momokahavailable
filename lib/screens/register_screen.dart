import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text('Register'),
      centerTitle: true,
     ),
     body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.grey[600],
                  ),
                ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(
                      content: Text('Register Succesfull!'),
                    ),
                    );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity,50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Register'),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Back to Wellcome Sreen',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
             ],
            ),
           ),
        ),
      ),
     ),
    );
  }
}