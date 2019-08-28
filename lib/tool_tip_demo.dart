import 'package:flutter/material.dart';

class TooltipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tool tip Demo'),),
      body: Center(child: Tooltip(
        message: 'No touch me, I am ticklish',
        child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566967035142&di=9c22206934639c55b6f408a06f791dd7&imgtype=0&src=http%3A%2F%2Fimg5.duitang.com%2Fuploads%2Fitem%2F201407%2F22%2F20140722161120_FU5AF.jpeg',
          scale: 2.0,
          fit: BoxFit.cover,
        ),
      ),),
    );
  }
}