import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_project/screens/wellcome_screen.dart';
import 'package:template_project/screens/register_screen.dart';
import 'package:template_project/screens/example_screen.dart';
import 'package:template_project/screens/confirmation_screen.dart';

void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/Register':(context) => RegisterScreen(),
        '/Home': (context) => ExampleScreen(),
        '/Confirmation': (context) => ConfirmationScreen(),
      },
    );
  }
 }