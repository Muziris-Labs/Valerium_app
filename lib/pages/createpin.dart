import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valerium_wallet/pages/login.dart';

class CreatePinPage extends StatefulWidget {
  const CreatePinPage({Key? key});

  @override
  State<CreatePinPage> createState() => _CreatePinPageState();
}

class _CreatePinPageState extends State<CreatePinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF121212),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            child: Container(
              child: Image.asset(
                'lib/images/Vector1c.png',
                width: 420,
                height: 140.11,
              ),
            ),
          ),
          Positioned(
            left: 0,
            child: Container(
              child: Image.asset(
                'lib/images/Vector1b.png',
                width: 425,
                height: 240.11,
              ),
            ),
          ),
           Positioned(
            left: 0,
            child: Container(
              child: Image.asset(
                'lib/images/Vector2b.png',
                width: 382,
                height: 1620.11,
              ),
            ),
          ),
          Positioned(
            left: 0,
            child: Container(
              child: Image.asset(
                'lib/images/Vector2a.png',
                width: 382,
                height: 1550.11,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image.asset(
                'lib/images/Logo.png',
                width: 120,
                height: 150,
              ),
              Text(
                'Create Pin',
                style: GoogleFonts.notoSans(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
             
              Text(
                'This enables more security',
                style: GoogleFonts.notoSans(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 35),
                  Container(
   height: 120,
    child: SizedBox(
    height: 80, 
    child: OtpTextField(
      textStyle: TextStyle(color: Colors.white),
      obscureText: true,
      numberOfFields: 4,
      borderColor: Color(0xFFFFFFFF),
      focusedBorderColor: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 1.0),
      fieldWidth: 55, 
      fieldHeight: 80, 
      borderWidth: 0.7, 
      borderRadius: BorderRadius.circular(7.0),
      showFieldAsBox: true,
      onSubmit: (String verificationCode) {
        
      },
    ),
  ),
),

              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                 
                },
                child: Container(
                  width: 270,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    gradient: LinearGradient(
                      begin: Alignment(1.00, -0.09),
                      end: Alignment(-1, 0.09),
                      colors: [Color(0xFFEA13F2), Color(0xFFE6213A)],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'Confirm',
                        style: GoogleFonts.notoSans(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
