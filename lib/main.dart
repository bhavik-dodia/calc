import 'package:flutter/material.dart';
import 'Home_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Calculator",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new HomePage(),
    );
  }
}