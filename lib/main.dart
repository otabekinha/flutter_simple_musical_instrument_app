import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void soundPlay(int soundNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note${soundNum}.wav'));
  }

  Expanded buildKey({required Color color, required int soundNum}) {
    return Expanded(
      child: Container(
        color: color,
        child: GestureDetector(
          onTap: () => soundPlay(soundNum),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.blue, soundNum: 1),
              buildKey(color: Colors.red, soundNum: 2),
              buildKey(color: Colors.green, soundNum: 3),
              buildKey(color: Colors.orange, soundNum: 4),
              buildKey(color: Colors.purple, soundNum: 5),
              buildKey(color: Colors.grey, soundNum: 6),
              buildKey(color: Colors.yellow, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
