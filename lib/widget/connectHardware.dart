import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConnectHardwarebtn extends StatelessWidget {
  const ConnectHardwarebtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(234, 19, 242, 0.2),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Connect hardware wallet",
                style: GoogleFonts.notoSans(
                    color: Color.fromRGBO(202, 25, 209, 1)),
              ),
              SizedBox(width: 5,),
              Image.asset("lib/images/icons/link-external-02.png")
            ],
          ),
        ),
      ),
    );
  }
}
