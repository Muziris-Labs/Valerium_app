import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transaction extends StatelessWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF242424),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            _buildTransactionItem('Mateo', '25.03.2024'),
            _buildTransactionItem('Mateo', '25.03.2024'),
            _buildTransactionItem('Mateo', '25.03.2024'),
            _buildTransactionItem('Mateo', '25.03.2024'),
            _buildTransactionItem('Mateo', '25.03.2024'),
            _buildTransactionItem('Mateo', '25.03.2024'),
            _buildTransactionItem('Mateo', '25.03.2024'),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionItem(String name, String date) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 14.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'lib/images/icons/sendbutton.png', // Replace with your image asset
                width: 40.0,
                height: 52.0,
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.white, // White font color
                    ),
                  ),
                  Text(
                    date,
                    style: GoogleFonts.notoSans(
                      fontSize: 10.0,
                      color: Colors.white, // White font color
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '-\$100',
                    style: GoogleFonts.notoSans(
                      fontSize: 16.0,
                      color: Color(0xFFD02129), // Red color
                    ),
                  ),
                  Text(
                    '0.0001 ETH',
                    style: GoogleFonts.notoSans(
                      fontSize: 10.0,
                      color: Colors.white, // White font color
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Container(
            width: double.infinity,
            height: 0.5,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
