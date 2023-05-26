import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  final String imageURL;
  final String name;
  final String details;

  const DetailsScreen({
    required this.imageURL,
    required this.name,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191c44),
      appBar: AppBar(
        title: Text('Butterfly',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, color: Colors.brown.shade50)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageURL),
          SizedBox(height: 16),
          Text(
            name,
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            details,
            style: GoogleFonts.poppins(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
