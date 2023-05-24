import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'basic_screen.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191c44),
      appBar: AppBar(
        backgroundColor: Color(0xFFff66c4),
        title: Text(
          'About',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 24),
        ),
      ),
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 200,
            child: Center(
              child: Image.asset('assets/logo.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'About the App',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '''
                Welcome to our mobile app dedicated to raising awareness about endangered butterflies and moths. There are more than 20 butterflies and moths listed as endangered by the U.S. Fish and Wildlife Service!

                The main reason for these butterflies being placed under the Endangered Species Act is mainly due to loss of habitat (agriculture, commercial, residential). However, other reasons include: poor land management practices, excessive use of pesticides and herbicides, and loss of the butterfly's host plant that is necessary for its growth and development.

                If faced with the risk of extinction, any species can be put under the protection of the Endangered Species Act (ESA). They are placed either as "threatened" and "endangered". An “endangered” species is one that is in danger of extinction throughout all or a significant portion of its range. A “threatened” species is one that could become endangered in the near future.

                The U.S. Fish and Wildlife Service received a petition to list the Monarch butterfly under the Endangered Species Act (ESA) on August 26, 2014. The status is currently under review and will be released by June 2019.

                Note: These butterflies are all listed as "Endangered" under the Endangered Species Act. The list is not exhaustive, and the complete list can be found on the USFWS ECOS site ''',
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Add the action you want to perform when the button is clicked
              },
              child: Text(
                'View Complete List',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
