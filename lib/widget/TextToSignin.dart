import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valerium_wallet/pages/login.dart';
import 'package:valerium_wallet/widget/GradientText.dart';

class ForwardLink extends StatelessWidget {
  const ForwardLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Already Have An Account? ",style: GoogleFonts.notoSans(color: Colors.white , fontSize: 12) ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
          },
          child: GradientText(gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromRGBO(196, 28, 203, 1),
              Color.fromRGBO(196, 24, 45, 1),
            ]) , text: "Sign Up", textStyle: GoogleFonts.notoSans())
        )
      ],
    );
  }
}