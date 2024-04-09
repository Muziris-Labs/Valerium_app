import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForwardLink extends StatelessWidget {
  const ForwardLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Already Have An Account? ",style: GoogleFonts.notoSans(color: Colors.white , fontSize: 12) ),
        GestureDetector(
          child: Text("Sign In", style: GoogleFonts.notoSans(color:Color.fromRGBO(196, 24, 45, 1), fontSize: 12),),
        )
      ],
    );
  }
}