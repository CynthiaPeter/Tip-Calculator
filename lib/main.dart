import 'package:flutter/material.dart';
import 'package:tip_calculator/Ui/calculatorpage.dart';
import 'Ui/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomePage(),
      
    );
  }
}