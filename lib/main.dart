import 'package:flutter/material.dart';
import 'tool_tip_demo.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tool Tip',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: TooltipDemo(),
    );
  }
}