import 'package:flutter/material.dart';
import 'package:template_project/screens/wellcome_screen.dart';
import 'package:template_project/screens/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WellcomeScreen(),
        '/register':(context) => RegisterScreen(),
      },
    );
  }
}