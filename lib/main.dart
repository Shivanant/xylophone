import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(xylophone());
}

class xylophone extends StatefulWidget {
  const xylophone({super.key});

  @override
  State<xylophone> createState() => _xylophoneState();
}

Expanded buildbutton(Color btncolor, int num) {
  return (Expanded(
    child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: btncolor,
        ),
        onPressed: () {
          final player = AudioPlayer();
          Source a = AssetSource('note$num.wav');
          player.play(a);
        },
        child: Container()),
  ));
}

class _xylophoneState extends State<xylophone> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildbutton(Colors.red, 1),
              buildbutton(Colors.orange, 2),
              buildbutton(Colors.green, 3),
              buildbutton(Colors.pink, 4),
              buildbutton(Colors.white, 5),
              buildbutton(Colors.blue, 6),
              buildbutton(Colors.teal, 7),
            ],
          ),
        ),
      ),
    ));
  }
}
