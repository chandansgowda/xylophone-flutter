import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: XyloPhoneApp(),
      ),
    ),
  );
}

class XyloPhoneApp extends StatelessWidget {
  Expanded buildKey({int soundNumber, dynamic color}){
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play("wave$soundNumber.wav");
        },
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildKey(soundNumber: 1, color: Colors.red),
        buildKey(soundNumber: 2, color: Colors.deepOrangeAccent),
        buildKey(soundNumber: 1, color: Colors.yellow),
        buildKey(soundNumber: 1, color: Colors.green),
        buildKey(soundNumber: 1, color: Colors.blue),
        buildKey(soundNumber: 1, color: Colors.indigo),
        buildKey(soundNumber: 1, color: Colors.purple),
        buildKey(soundNumber: 1, color: Colors.teal),
      ],

    );
  }
}
