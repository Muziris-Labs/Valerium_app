import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:valerium_wallet/widget/GradientText.dart';

class AlternativeGradbtn extends StatelessWidget {
  final VoidCallback ontap;
  final text;
  const AlternativeGradbtn({super.key, required this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: GradientBoxBorder(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromRGBO(196, 28, 203, 1),
                Color.fromRGBO(196, 24, 45, 1),
              ])),
      
          borderRadius: BorderRadius.circular(6),
          // color: Colors.transparent,
        ),
      
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0 , horizontal: 15),
          child: GradientText(gradient: LinearGradient(begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromRGBO(196, 28, 203, 1),
                  Color.fromRGBO(196, 24, 45, 1),]), text: text, textStyle: GoogleFonts.notoSans()),
        ),
      ),
    );
  }
}
