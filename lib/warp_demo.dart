import 'package:flutter/material.dart';

class WarpDemo extends StatefulWidget {
  @override
  _WarpDemoState createState() => _WarpDemoState();
}

class _WarpDemoState extends State<WarpDemo> {
  List<Widget> list;  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }
  @override
  Widget build(BuildContext context) {
    //得到屏幕的高度和宽度，用来设置Container的宽和高
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Warp'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height*0.5,
            color: Colors.grey,
            child: Wrap(children: list, spacing: 26.0,),
          ),
        ),
      ),
    );
  }

  Widget buildAddButton() {
    //返回一个手势Widget，只用用于显示事件
    
    return GestureDetector(
      onTap: (){
        if (list.length<9) {
          setState(() {
            list.insert(list.length-1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100.0,
          height: 100.0,
          color: Colors.black54,
          child: Icon(Icons.add),
      ),
      )
    );
  }

  Widget buildPhoto() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100.0,
        height: 100.0,
        color: Colors.amber,
        child: Center(child: Text('Picture'),),
      ),
    );
  }
}