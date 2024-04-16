import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NFT extends StatelessWidget {
  const NFT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF121212), // Set the background color of the container
      padding: EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 10), // Adjust padding
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 7.0, // Adjust the spacing between images vertically
        crossAxisSpacing: 1.0, // Adjust the spacing between images horizontally
        children: [
          // Individual Image Widgets
          Container(
            margin: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
            
            ),
            child: Image.asset(
              'lib/images/nfts/NFT9.png',
             fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            margin: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              
            ),
            child: Image.asset(
              'lib/images/nfts/NFT8.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            margin: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              
            ),
            child: Image.asset(
              'lib/images/nfts/NFT7.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          // Add more images in the same manner if needed
          Container(
            margin: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
             
            ),
            child: Image.asset(
              'lib/images/nfts/NFT6.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            margin: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              
            ),
            child: Image.asset(
              'lib/images/nfts/NFT5.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            margin: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
        
            ),
            child: Image.asset(
              'lib/images/nfts/NFT6.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            margin: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              
            ),
            child: Image.asset(
              'lib/images/nfts/NFT7.png',
             fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            margin: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              
            ),
            child: Image.asset(
              'lib/images/nfts/NFT8.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            margin: EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              
            ),
            child: Image.asset(
              'lib/images/nfts/NFT1.png',
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
