import 'package:flutter/material.dart';
import 'custom_clipper.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Clipper Bessel',
      debugShowCheckedModeBanner: false,
      //自定义主题样本
      theme: ThemeData.light(),
      home: HomePage()
    );
  }
}