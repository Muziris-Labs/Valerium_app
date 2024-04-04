import 'package:flutter/material.dart';
import 'package:design_grid/design_grid.dart';
import 'onboarding.dart'; // Import your onboarding page file here

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Navigates to the onboarding page after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingPage()),
      );
    });

    return Scaffold(
      backgroundColor: Color.fromARGB(1, 33, 32, 32),
      body: Stack(
        children: [
          
          
          // Centered image
          Center(
            child: Image.asset(
              'lib/images/valerium2.png',
              width: 200, 
              height: 200, 
            ),
          ),
        ],
      ),
    );
  }
}
