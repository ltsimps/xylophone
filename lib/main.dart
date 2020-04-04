import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound (int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
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
                Expanded(
                  child: FlatButton(

                    color: Colors.blue,
                    onPressed: (){
                      playSound(1);

                    }, child: Text('Click Me'),),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: (){
                      playSound(2);

                    }, child: Text('Click Me'),),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.purple,
                    onPressed: (){
                      playSound(3);

                    }, child: Text('Click Me'),),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.limeAccent,
                    onPressed: (){
                      playSound(4);
                    }, child: Text('Click Me'),),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.redAccent,
                    onPressed: (){
                      playSound(5);

                    }, child: Text('Click Me'),),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.cyanAccent,
                    onPressed: (){
                      playSound(6);

                    }, child: Text('Click Me'),),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.orange,
                    onPressed: (){
                      playSound(7);

                    }, child: Text('Click Me'),),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
