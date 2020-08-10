import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);

  void randomColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Application'),
        centerTitle: true,
      ),
        body: GestureDetector(
          onTap: randomColor,
          child: Container(
            color: _color,
            child: Center(
              child: Text(
                'Hello',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ));
  }
}

