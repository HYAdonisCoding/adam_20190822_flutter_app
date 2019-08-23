import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        body: Center(
          child: Container(
            child: new Image.network(
              'https://avatars0.githubusercontent.com/u/17538734?s=400&u=be0601aa0129998afb933c0b2ffae23a7f17ecdc&v=4',
              scale:1.0,
              // fit: BoxFit.cover,
              // color: Colors.greenAccent,
              // colorBlendMode: BlendMode.modulate,
              repeat: ImageRepeat.repeatY,
            ),
            width: 300.0,
            height: 200.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}