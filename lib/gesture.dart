import 'package:flutter/material.dart';
import 'dart:math';

class MyHome extends StatefulWidget {
  @override
  State createState() => new _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final Random _random = new Random();
  Color _color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            _color = new Color.fromRGBO(_random.nextInt(256),
                _random.nextInt(256), _random.nextInt(256), 1.0);
          });
        },
        child: new Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: _color,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[Text("Hey there!")]),
        ),
      ),
    );
  }
}
