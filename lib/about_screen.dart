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
              'The Imperiled app aims to provide information about some of the endangered species of butterflies. Realizing this and altering our routines is critical because these changes will eventually have an effect on us as well. All of our native creatures, including butterflies, which are in decline due to human activity, deserve a place in this world. It is important to keep in mind that the planet belongs to all of us, and when we alter fundamental principles that have developed over millennia, such as how plants are pollinated, we are interfering in a field about which we have little knowledge.',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Montserrat', fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
