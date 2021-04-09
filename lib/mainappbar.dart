import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.yellowAccent,
        title: Text('Belajar AppBar Flutter',
        style: TextStyle(color: Colors.purple)),
        //   flexibleSpace: Container(
        //     decoration: BoxDecoration(
        //         gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: <Color>[
        //       Colors.green,
        //       Colors.blue
        //     ])),
        //   ),
    ),
  )));
}
