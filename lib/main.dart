import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      //Get Form Local Assets
      AssetSource('note$soundNumber.wav'),
      //Get From External Url
      // UrlSource(
      //   'https://raw.githubusercontent.com/londonappbrewery/xylophone-flutter/master/assets/note1.wav',
      // ),
    );
  }

  Expanded buildKey({
    required Color color,
    required int soundNumber,
    required String text,
  }) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1, text: 'DO'),
              buildKey(color: Colors.orange, soundNumber: 2, text: 'RE'),
              buildKey(color: Colors.yellow, soundNumber: 3, text: 'MI'),
              buildKey(color: Colors.green, soundNumber: 4, text: 'FA'),
              buildKey(color: Colors.teal, soundNumber: 5, text: 'SOL'),
              buildKey(color: Colors.blue, soundNumber: 6, text: 'LA'),
              buildKey(color: Colors.purple, soundNumber: 7, text: 'SI'),
            ],
          ),
        ),
      ),
    );
  }
}
