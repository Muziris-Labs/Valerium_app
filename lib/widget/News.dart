import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, // Specify the desired height
      child: ListView.builder(
        itemCount: 4, // Generate 4 boxes
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), // Adjust vertical margin
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFF323232),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // News Icon
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset(
                    'lib/images/news_icon.png', // Replace with your image asset
                    width: 40.0,
                    height: 40.0,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Posted Date
                      Text(
                        'Posted 24th March 2024',
                        style: GoogleFonts.notoSans(
                          fontSize: 6.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      // Heading
                      Text(
                        'Valerium finally launches on Mainnet',
                        style: GoogleFonts.notoSans(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      // Paragraph
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and '
                        'typesetting industry. Lorem Ipsum has been the industry\'s standard '
                        'dummy text ever since the 1500s, when an unknown printer took a '
                        'galley of type and scrambled it to make a type specimen book. '
                        ,
                        style: GoogleFonts.notoSans(
                          fontSize: 8.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
