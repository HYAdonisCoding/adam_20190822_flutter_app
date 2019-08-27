import 'package:flutter/material.dart';
import 'keep_alive_demo.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Keep Alive',
      //自定义主题样本
      theme: ThemeData(
        // primaryColor: Colors.blue,
        primarySwatch: Colors.blue
      ),
      home: KeepAliveWidget()
    );
  }
}