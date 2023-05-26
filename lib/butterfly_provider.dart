import 'package:flutter/material.dart';
import './models/model.dart';

class ButterflyProvider extends InheritedWidget {
  final List<Butterfly> butterfly = [];

  ButterflyProvider({Key? key, Widget? child}) : super(key: key, child: child!);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;

  static List<Butterfly> of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<ButterflyProvider>();
    return provider!.butterfly;
  }
}
