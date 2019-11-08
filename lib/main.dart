import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatelessWidget {
  void PlaySound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  Expanded BuildKey({int NumberOfSound, Color color}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          PlaySound(NumberOfSound);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildKey(NumberOfSound: 1, color: Colors.red),
              BuildKey(NumberOfSound: 2, color: Colors.orange),
              BuildKey(NumberOfSound: 3, color: Colors.amber),
              BuildKey(NumberOfSound: 4, color: Colors.green),
              BuildKey(NumberOfSound: 5, color: Colors.teal),
              BuildKey(NumberOfSound: 6, color: Colors.blue),
              BuildKey(NumberOfSound: 7, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
