import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _textFieldController = TextEditingController();

  List<Widget> textFields = [];

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/images/Logo.png',
                        width: 120,
                        height: 150,
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      'Access your account',
                      style: GoogleFonts.notoSans(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      'Fill your Valerium Domain name to \nLogin.',
                      style: GoogleFonts.notoSans(
                        color: Color(0xFF9E9E9E),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Valerium Domain",
                          style: GoogleFonts.notoSans(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
  width: 380,
  height: 45,
  decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(10),
  ),
  
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: TextField(
  controller: _textFieldController,
  style: TextStyle(color: Colors.white),
  textAlign: TextAlign.left, 
  onChanged: (value) {
    
    setState(() {
      textFields.clear(); 
      textFields.add(Text(
        value,
        style: TextStyle(color: Colors.white),
      ));
    });
  },
  decoration: InputDecoration(
    hintText: 'noober@valerium',
    hintStyle: GoogleFonts.notoSans(
      color: Color(0xFF9E9E9E),
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Colors.white,
        width: 2.0,
      ),
    ),
  ),
),

    ),
  
),

                        SizedBox(height: 20),
                        Container(
                          width: 163,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            gradient: LinearGradient(
                              begin: Alignment(1.00, -0.09),
                              end: Alignment(-1, 0.09),
                              colors: [Color(0xFFE6213A), Color(0xFFEA13F2)],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Center(
                              child: Text(
                                'Access Account',
                                style: GoogleFonts.notoSans(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            
                          },
                          child: Container(
                            width: 249,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              gradient: LinearGradient(
                                begin: Alignment(1.00, -0.09),
                                end: Alignment(-1, 0.09),
                                colors: [
                                  Color(0xFF39173F),
                                  Color(0xFF39173F)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Connect Hardware Wallet',
                                    style: GoogleFonts.notoSans(
                                      color: Color(0xFFd41adb),
                                      fontSize: 14,
                                    ),
                                  ),
                                  Image.asset(
                                    'lib/images/link_icon.png',
                                    width: 20,
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                               
                              },
                              child: Text(
                                "Don't Have An Account?",
                                style: GoogleFonts.notoSans(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                
                              },
                              child: Text(
                                "Sign up",
                                style: GoogleFonts.notoSans(
                                  color: Colors.red,
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
