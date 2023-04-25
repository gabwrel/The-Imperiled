import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'basic_screen.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'The Imperiled',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 36,),
        ),
        Text(
          'About',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 18,),
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
              '''
        The Imperiled app aims to provide information about some of the endangered species of butterflies. Realizing this and altering our routines is critical because these changes will eventually have an effect on us as well. All of our native creatures, including butterflies, which are in decline due to human activity, deserve a place in this world. It is important to keep in mind that the planet belongs to all of us, and when we alter fundamental principles that have developed over millennia, such as how plants are pollinated, we are interfering in a field about which we have little knowledge.
          ''',
          textAlign: TextAlign.center, 
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 14,),
          ),
        ),
      ]
      );
  }
}