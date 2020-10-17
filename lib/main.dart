import 'package:flutter/material.dart';
import 'gesture.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test application',
      home: new MyHome(),
    );
  }
}
