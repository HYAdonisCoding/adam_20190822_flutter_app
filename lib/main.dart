import 'package:flutter/material.dart';
import 'warp_demo.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Warp Layout',
      //自定义主题样本
      theme: ThemeData.dark(),
      home: WarpDemo()
    );
  }
}