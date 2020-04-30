import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioCache audioPlayer = AudioCache();

  void playLocal(String path) async {
    audioPlayer.play(path);
  }

  final List<MaterialColor> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: colors.asMap().entries.map((entry) {
              int idx = entry.key + 1;
              MaterialColor color = entry.value;
              return Expanded(
                child: FlatButton(
                  onPressed: () => playLocal("note$idx.wav"),
                  color: color,
                  child: Text(''),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
