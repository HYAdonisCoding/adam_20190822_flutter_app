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
            child: new Text(
            'Hello Text Widget,Hello JSPang',
            // textAlign: TextAlign.left,
            maxLines: 1,
            style: TextStyle(
              fontSize: 40.0,
              color: Color.fromARGB(255, 255, 150, 150),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
          alignment: Alignment.topLeft,
          width: 500.0,
          height: 400.0,
          // color: Colors.lightBlue,
          padding: const EdgeInsets.fromLTRB(10.0, 30.0, 20.0, 20.0),
          margin: const EdgeInsets.all(10.0),
          decoration: new BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple]
            ),
            border: Border.all(width: 1.0, color: Colors.pink)
          ),
          ),
        ),
      ),
    );
  }
}