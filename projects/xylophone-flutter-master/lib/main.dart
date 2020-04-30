import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioCache audioPlayer = AudioCache();

  void playLocal(String path) async {
    audioPlayer.play(path);
  }

  @override
  Widget build(BuildContext context) {
    String text = adjectives[2];

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: FlatButton(
                onPressed: () {
                  playLocal("note1.wav");
                },
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
