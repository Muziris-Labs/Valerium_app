import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Balcon extends StatelessWidget {
  const Balcon({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: Color(0xFF4571A5), // Set the background color
        border: Border.all(
          color: Colors.black, // Adjust border color as needed
          width: 2.0, // Adjust border width as needed
        ),
        borderRadius: BorderRadius.circular(10.0), // Adjust border radius as needed
        shape: BoxShape.rectangle,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10.0,
            top: 10.0,
            child: Image.asset(
              'lib/images/icons/ethicon.png', // Replace with your ETH icon image path
              width: 20.0,
              height: 20.0,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            right: 10.0,
            top: 10.0,
            child: Text(
              'Ethereum (ETH)',
              style: GoogleFonts.notoSans(
                fontSize: 10.0,
                
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 40.0,
            child: Text(
              'Balance:',
              style: GoogleFonts.notoSans(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 18.0,
            child: Text(
              '\$2,075.98',
              style: GoogleFonts.notoSans(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class Balcon2 extends StatelessWidget {
  const Balcon2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: Color(0xFFCA19D1), // Set the background color
        border: Border.all(
          color: Colors.black, // Adjust border color as needed
          width: 2.0, // Adjust border width as needed
        ),
        borderRadius: BorderRadius.circular(10.0), // Adjust border radius as needed
        shape: BoxShape.rectangle,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10.0,
            top: 10.0,
            child: Image.asset(
              'lib/images/blue_icon.png', // Replace with your ETH icon image path
              width: 20.0,
              height: 20.0,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            right: 10.0,
            top: 10.0,
            child: Text(
              'Base (Base)',
              style: GoogleFonts.notoSans(
                fontSize: 10.0,
                
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 40.0,
            child: Text(
              'Balance:',
              style: GoogleFonts.notoSans(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 18.0,
            child: Text(
              '\$2,075.98',
              style: GoogleFonts.notoSans(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class Balcon3 extends StatelessWidget {
  const Balcon3({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: Color(0xFF5F4398), // Set the background color
        border: Border.all(
          color: Colors.black, // Adjust border color as needed
          width: 2.0, // Adjust border width as needed
        ),
        borderRadius: BorderRadius.circular(10.0), // Adjust border radius as needed
        shape: BoxShape.rectangle,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10.0,
            top: 10.0,
            child: Image.asset(
              'lib/images/icons/Ticon.png', // Replace with your ETH icon image path
              width: 20.0,
              height: 20.0,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            right: 10.0,
            top: 10.0,
            child: Text(
              'Ethereum (ETH)',
              style: GoogleFonts.notoSans(
                fontSize: 10.0,
                
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 40.0,
            child: Text(
              'Balance:',
              style: GoogleFonts.notoSans(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 18.0,
            child: Text(
              '\$2,075.98',
              style: GoogleFonts.notoSans(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}