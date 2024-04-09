import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradButton extends StatelessWidget {
  final text;
  final VoidCallback ontap;

  
  const GradButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
      
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromRGBO(196, 28, 203, 1),
              Color.fromRGBO(196, 24, 45, 1),
            ])),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0 , horizontal: 15),
              child: Text(text, style: GoogleFonts.notoSans(color: Colors.white, fontSize: 12),),
            ),
      ),
    );
  }
}
