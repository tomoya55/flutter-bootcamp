import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade500,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int idx = 0;

  void onPressed() {
    setState(() {
      idx = Random().nextInt(5) + 1;
      print(idx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: onPressed,
          child: Image.asset("images/ball$idx.png"),
        ),
      ),
    );
  }
}
