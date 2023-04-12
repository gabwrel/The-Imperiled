import 'dart:math' as Math;

import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[
        Align(
        alignment: Alignment.topCenter,
        child: Image.asset('images/logo.jpg',
      height: 200,
      width: 200,), 
        )
        ,],
    );
  }
}
