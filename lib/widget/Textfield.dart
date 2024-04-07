import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupField extends StatelessWidget {
  final text;
  final TextEditingController controller;
  final bool hide;
  const SignupField({super.key, required this.text , required this.controller, this.hide = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
     height: 35,
 
      child: TextField(
        controller: controller,
        obscureText: hide,
        style: GoogleFonts.notoSans(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(0, 0, 0, 0.8),
          hintStyle: GoogleFonts.notoSans(color:Color.fromRGBO(158, 158, 158, 1), fontSize:14),
          contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
          hintText: text ,
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8)
        
          )
        ),
      ),
    );
  }
}
