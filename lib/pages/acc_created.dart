import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valerium_wallet/pages/createpin.dart';


class AccountCreate extends StatefulWidget {
  const AccountCreate({Key? key});

  @override
  State<AccountCreate> createState() => _AccountCreateState();
}

class _AccountCreateState extends State<AccountCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF121212),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 140),
            Image.asset(
              'lib/images/Vector.png',
              width: 148.2,
              height: 128.02,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            Text(
              'Congratulations!',
              style: GoogleFonts.notoSans(
                fontSize: 20,
                textStyle: TextStyle(
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: [Color(0xFFEA13F2), Color(0xFFE6213A)],
                    ).createShader(Rect.fromLTWH(0, 0, 350, 70)),
                ),
              ),
            ),
            SizedBox(height: 10), 
            Text(
              'Account successfully created',
              style: GoogleFonts.notoSans(
                fontSize: 16,
                textStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 180),
            Container(
              width: 290,
              height: 53,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                gradient: LinearGradient(
                  begin: Alignment(1.00, -0.09),
                  end: Alignment(-1, 0.09),
                  colors: [Color(0xFFE6213A), Color(0xFFEA13F2)],
                ),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreatePinPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'Create Wallet Pin',
                        style: GoogleFonts.notoSans(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 290,
              height: 53,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                gradient: LinearGradient(
                  begin: Alignment(1.00, -0.09),
                  end: Alignment(-1, 0.09),
                  colors: [Color(0xFFE6213A), Color(0xFFEA13F2)],
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(1), 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  gradient: LinearGradient(
                    begin: Alignment(1.00, -0.09),
                    end: Alignment(-1, 0.09),
                    colors: [Color(0xFF121212), Color(0xFF121212)],
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          'Continue Without Wallet Pin',
                          style: GoogleFonts.notoSans(
                            fontSize: 14,
                            textStyle: TextStyle(
                              foreground: Paint()
                                ..shader = LinearGradient(
                                  colors: [Color(0xFFEA13F2), Color(0xFFE6213A)],
                                ).createShader(Rect.fromLTWH(0, 0, 350, 70)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
