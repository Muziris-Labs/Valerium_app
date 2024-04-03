import 'package:flutter/material.dart';
import 'package:design_grid/design_grid.dart';
import 'main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1, 33, 32, 32),
      body: Stack(
        children: [
          // Grid paper background
          GridPaper(
            color: Color.fromARGB(115, 100, 96, 96), // Adjust grid color as needed
            interval: 110, // Adjust grid interval as needed
            subdivisions: 1, // Set subdivisions to 0 to remove subdivisions
            child: Container(), // Empty container as we only need the grid
          ),
          // Centered image
          Center(
            child: Image.asset(
              'lib/images/valerium2.png',
              width: 200, // Set the width of the image
              height: 200, // Set the height of the image
            ),
          ),
        ],
      ),
    );
  }
}
