import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valerium_wallet/widget/SignupProcess.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset:false,
      backgroundColor: Color.fromRGBO(18, 18, 18, 1),
      body: SafeArea(
        child: Stack(children: [
          Positioned(
            top: 50,
            right: -160,
            child: Image.asset(
              "lib/images/Rectangle.png",
              width: 225,
            ),
          ),
          Positioned(
            bottom: -115,
            left: -140,
            child: Transform.flip(
                flipX: true, child: Image.asset("lib/images/Rectangle.png", width: 200,)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                "lib/images/Logo.png",
                width: 120,
                height: 120,
              )),
              Padding(
                padding: const EdgeInsets.only(left:43.0),
                child: Text(
                  "Setup Your new \nWallet",
                  style: GoogleFonts.notoSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      height: 1
                      ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SignupProcess()

            ],
          ),
        ]),
      ),
    );
  }
}
