import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/basic_screen.dart';
import 'package:flutter_layout/home.dart';
import 'package:flutter_layout/details_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
runApp(StaticApp());
}
class StaticApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green,
        appBarTheme: AppBarTheme(
          elevation: 10,
          titleTextStyle: TextStyle( // change from TextTheme
            fontFamily: 'LeckerliOne',
            fontSize: 24,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

//fontFamily: 'LeckerliOne',
