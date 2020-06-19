import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Anima.dart';
import 'Anima1.dart';
import 'Anima2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Anima.id,
      routes: {
        Anima.id: (context) => Anima(),
        Anima1.id: (context) => Anima1(),
        Anima2.id: (context) => Anima2(),
      },
    );
  }
}
