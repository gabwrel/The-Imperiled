import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/basic_screen.dart';
import 'package:flutter_layout/home.dart';
import 'package:flutter_layout/details_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'butterfly_provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(StaticApp());
}

class StaticApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BUTTERFLY',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green,
        appBarTheme: AppBarTheme(
          elevation: 10,
          titleTextStyle: TextStyle(
            // change from TextTheme
            fontFamily: 'LeckerliOne',
            fontSize: 24,
          ),
        ),
      ),
      home: ButterflyProvider(
        child: HomeScreen(),
      ),
    );
  }
}

//fontFamily: 'LeckerliOne',
