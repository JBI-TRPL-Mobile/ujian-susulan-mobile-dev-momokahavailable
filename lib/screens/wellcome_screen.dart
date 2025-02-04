import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WellcomeScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return Scallfold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                    Text(
                        "Hai User!",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                        ),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Pengalaman Pribadi Anda",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.grey.shade600,
                        ),
                    ),
                    SizedBox(height: 30),
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

            AppBar:AppBar(
                backgroundColor: Colors.grey.shade900,
                title: Text(
                    "Perbaikan Nilai",
                    style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                centerTitle: true,
            ),
    ),
 } ;
}