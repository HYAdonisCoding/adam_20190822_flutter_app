import 'package:flutter/material.dart';
import 'frosted_glass_demo.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Blurry',
      //自定义主题样本
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        body: FrostedGlassDemo(),
      ),
    );
  }
}