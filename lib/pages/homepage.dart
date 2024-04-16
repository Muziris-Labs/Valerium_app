import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valerium_wallet/widget/Nft.dart';
import 'package:valerium_wallet/widget/balancecontainer.dart';
import 'package:valerium_wallet/widget/transactions.dart';
import 'package:valerium_wallet/widget/News.dart'; // Import the Transaction widget file

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showTransaction = false; // Flag to show/hide Transaction widget
  bool showNews = false; // Flag to show/hide News widget
  bool showNFT = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF121212),
      body: Stack(
        children: [
          // Blue Icon and Texts
          Positioned(
            left: 18.0,
            top: 80.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 32.0,
                  height: 32.0,
                  // Replace this with your blue icon image
                  child: Image.asset(
                    'lib/images/blue_icon.png',
                    width: 32.0,
                    height: 32.0,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 4.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'nooberBoy.eth',
                      style: GoogleFonts.notoSans(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'PubKey: 1BvBMSEYstWetqTFn5Au4...',
                      style: GoogleFonts.notoSans(
                        fontSize: 8.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Message Box Icon at Rightmost Corner
          Positioned(
            right: 60.0,
            top: 80.0,
            child: Container(
              width: 28.0,
              height: 32.0,
              // Replace this with your message box icon image
              child: Image.asset(
                'lib/images/messagebox1.png',
                width: 28.0,
                height: 32.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Bell Icon at Rightmost Corner
          Positioned(
            right: 16.0,
            top: 80.0,
            child: Container(
              width: 32.0,
              height: 32.0,
              // Replace this with your bell icon image
              child: Image.asset(
                'lib/images/bell1.png',
                width: 32.0,
                height: 32.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Your Existing Positioned Containers
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
          // Portfolio Value Text at Center
          Positioned(
            top: 150.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Portfolio value',
                style: GoogleFonts.notoSans(
                  fontSize: 16.0,
                  color: Color(0xFF4D4A4F),
                ),
              ),
            ),
          ),
          // Portfolio Amount Text and Badge Image
          Positioned(
            top: 170.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$40,206.20',
                  style: GoogleFonts.hankenGrotesk(
                    fontSize: 32.68,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10.0),
                Image.asset(
                  'lib/images/Badge.png',
                  width: 50.0,
                  height: 32.0,
                ),
              ],
            ),
          ),
          // Token Title on the Left
          Positioned(
            top: 220.0,
            left: 20.0,
            child: Text(
              'Token',
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
          // See All Title on the Right
          Positioned(
            top: 222.0,
            right: 20.0,
            child: GestureDetector(
              onTap: () {
                // Handle tap event
              },
              child: Text(
                'See All',
                style: GoogleFonts.notoSans(
                  fontSize: 12.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Balcon containers
          Positioned(
            top: 250.0,
            left: 20.0,
            right: 20.0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Balcon widget 1
                  Balcon(), // Use your Balcon widget here with desired color
                  SizedBox(width: 10.0),
                  // Balcon widget 2
                  Balcon2(), // Use your Balcon widget here with desired color
                  SizedBox(width: 10.0),
                  // Balcon widget 3
                  Balcon3(), // Use your Balcon widget here with desired color
                ],
              ),
            ),
          ),
          // Buttons below the line
          Positioned(
            left: 0,
            right: 0,
            top: 420.0, // Adjust the position as needed
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle the flag to show/hide Transaction widget
                          showTransaction = true;
                          showNFT = false;
                          showNews = false;
                        });
                      },
                      child: Text(
                        'Transactions',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 20), // Adjust the spacing between buttons
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle the flag to show/hide NFT widget
                          showTransaction = false;
                          showNFT = true;
                          showNews = false;
                        });
                      },
                      child: Text(
                        'NFT\'s',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 20), // Adjust the spacing between buttons
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle the flag to show/hide News widget
                          showTransaction = false;
                          showNFT = false;
                          showNews = true;
                        });
                      },
                      child: Text(
                        'News',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //... Your existing code for other UI elements

          // Conditionally render Transaction widget
          if (showTransaction)
            Positioned(
              left: 0,
              right: 0,
              top: 440.0,
              bottom: 20.0,
              child: Scrollbar(
                thickness: 3,
                radius: Radius.circular(2),
                child: SingleChildScrollView(
                  child: Transaction(),
                ),
              ),
            ),

          // Conditionally render News widget
          if (showNews)
            Positioned(
              left: 0,
              right: 0,
              top: 425.0,
              bottom: 20.0,
              child: Scrollbar(
                thickness: 3,
                radius: Radius.circular(2),
                child: SingleChildScrollView(
                  child: News(),
                ),
              ),
            ),
          Positioned(
            left: 0,
            right: 0,
            top: 440,
            bottom: 50,
            child: showNFT ? NFT() : SizedBox(), // Render NFT screen conditionally
          ),
                
          Positioned(
            left: 0,
            right: 0,
            top: 410.0, // Adjust the position as needed
            child: Container(
              height: 1.5, // Height of the line
              color: Color(0xFF292929), // Color of the line
            ),
          ),

          // Conditionally render Transaction widget
          if (showTransaction) // If showTransaction is true, render Transaction widget
            Positioned(
              left: 0,
              right: 0,
              top: 440.0, // Adjust the position as needed
              bottom: 20.0, // Adjust the position as needed
              child: Scrollbar(
                thickness: 3,
                radius: Radius.circular(2),
                child: SingleChildScrollView(
                  child: Transaction(), // Render Transaction widget
                ),
              ),
            ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 30,
            child: Image.asset(
              'lib/images/transaction.png',
              width: 55.0,
              height: 55.0,
            ),
          ),
          // Subtract.png at the bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10.0), // Adjust the spacing as needed
                // Subtract.png Image
                Image.asset(
                  'lib/images/Subtract.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          // Icons on the Subtract.png at the bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'lib/images/Home.png',
                    width: 28.0,
                    height: 28.0,
                  ),
                  Image.asset(
                    'lib/images/Market.png',
                    width: 28.0,
                    height: 28.0,
                  ),
                  Image.asset(
                    'lib/images/Setting.png',
                    width: 28.0,
                    height: 28.0,
                  ),
                  Image.asset(
                    'lib/images/book.png',
                    width: 28.0,
                    height: 28.0,
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
