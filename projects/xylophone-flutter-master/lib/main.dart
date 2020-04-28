import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioPlayer audioPlayer = AudioPlayer();

  void playLocal(String path) async {
    int result = await audioPlayer.play(path, isLocal: true);
    if (result == 1) {
      print("playe")
    }
  }

  @override
  Widget build(BuildContext context) {
    String text = adjectives[2];

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
