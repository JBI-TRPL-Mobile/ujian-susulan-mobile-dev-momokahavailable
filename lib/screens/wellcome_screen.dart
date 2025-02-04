import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Image Placeholder
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey.shade300,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.grey.shade600,
              ),
            ),
            SizedBox(height: 20),
            // Title Text
            Text(
              "Welcome User",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            // Subtitle Text
            Text(
              "Your personalized experience",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
            ),
            SizedBox(height: 30),
            // Indicator Dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildIndicator(true),
                buildIndicator(false),
                buildIndicator(false),
              ],
            ),
          ],
        ),
      ),
      // Top Bar
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text(
          "APP NAME",
          style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
    );
  }

  Widget buildIndicator(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 12 : 8,
      height: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.black87 : Colors.grey.shade400,
        shape: BoxShape.circle,
      ),
    );
  }
}
