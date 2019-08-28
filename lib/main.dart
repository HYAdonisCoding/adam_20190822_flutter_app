import 'package:flutter/material.dart';
import 'daggable_demo.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Draggable',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: DraggableDemo(),
    );
  }
}