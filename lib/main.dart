import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound (int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey( { int keyNumber, Color color }) {
    return Expanded(
      child: FlatButton(

        color: color,
        onPressed: (){
          playSound(keyNumber);

        }, child: Text('Click Me'),),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

               buildKey(keyNumber: 1,  color:Colors.green),
               buildKey(keyNumber: 2,  color:Colors.red),
               buildKey(keyNumber: 3,  color:Colors.blueAccent),
               buildKey(keyNumber: 4,  color:Colors.indigoAccent),
               buildKey(keyNumber: 5,  color:Colors.limeAccent),
               buildKey( keyNumber: 6, color:Colors.brown),
               buildKey(keyNumber: 7,  color:Colors.deepOrangeAccent),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
