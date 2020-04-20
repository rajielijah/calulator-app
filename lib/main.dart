import 'package:flutter/material.dart';
import 'package:calculator/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
 
  }

  
}