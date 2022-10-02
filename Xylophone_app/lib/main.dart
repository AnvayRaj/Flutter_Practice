import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildKey({Color c = Colors.white, int soundNumber = 1}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(c),
        ),
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
            children: [
              buildKey(c: Colors.red, soundNumber: 1),
              buildKey(c: Colors.orange, soundNumber: 2),
              buildKey(c: Colors.yellow, soundNumber: 3),
              buildKey(c: Colors.green, soundNumber: 4),
              buildKey(c: Colors.teal, soundNumber: 5),
              buildKey(c: Colors.blue, soundNumber: 6),
              buildKey(c: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
