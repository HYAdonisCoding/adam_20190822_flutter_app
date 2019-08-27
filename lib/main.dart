import 'package:flutter/material.dart';
import 'expansion_tile.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Expansion Tile',
      //自定义主题样本
      theme: ThemeData.dark(),
      home: ExpansionTileDemo()
    );
  }
}