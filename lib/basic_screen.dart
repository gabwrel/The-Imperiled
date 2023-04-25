import 'package:flutter/material.dart';
import 'package:flutter_layout/immutable_widget.dart';
import 'package:flutter_layout/about_screen.dart';
import 'package:flutter_layout/app_drawer.dart';

class BasicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFF191c44),
      appBar: AppBar(
        backgroundColor: Color(0xFFff66c4),
        title: Text(
          'The Imperiled',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ImmutableWidget(),
          AboutScreen(),
        ],
      ),
      drawer: AppDrawer(),
    );
  }
}
