import 'package:flutter/material.dart';

void main() {
  runApp(Todoey());
}

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Todoey'),
          ),
          body: Container(
            child: Text('Body'),
          )),
    );
  }
}
