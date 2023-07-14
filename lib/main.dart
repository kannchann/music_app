import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void sound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded playingButtons(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          foregroundColor: color,
        ),
        onPressed: () {
          sound(soundNumber);
        },
        child: const Text('click me'),
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
              playingButtons(Colors.red, 1),
              playingButtons(Colors.green, 2),
              playingButtons(Colors.lightGreen, 3),
              playingButtons(Colors.blue, 4),
              playingButtons(Colors.indigo, 5),
              playingButtons(Colors.pink, 6),
              playingButtons(Colors.orange, 7),
            ],
          ),
        ),
      ),
    );
  }
}
