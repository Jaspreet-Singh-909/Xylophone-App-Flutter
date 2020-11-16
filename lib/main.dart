import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playMusic (int musicNumber){
    final player = AudioCache();
    player.play('note$musicNumber.wav');
  }

  Expanded buildKey ({Color color, int secondNumber}) {
    return Expanded(
      child: FlatButton(
      color: color,
      onPressed: () {
        playMusic(secondNumber);
      },
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             buildKey(color: Colors.red, secondNumber:1),
              buildKey(color: Colors.yellow, secondNumber: 2),
              buildKey(color: Colors.blue, secondNumber: 3),
              buildKey(color: Colors.teal, secondNumber: 4),
              buildKey(color: Colors.purple, secondNumber: 5),
              buildKey(color: Colors.orange, secondNumber: 6),
              buildKey(color: Colors.green, secondNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
