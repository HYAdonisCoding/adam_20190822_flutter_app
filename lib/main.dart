import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}):super(key: key);

  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.9),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('http://img5.mtime.cn/CMS/News/2019/08/23/083416.91255969_620X620.jpg'),
          radius: 100.0,
        ),
        new Positioned(
          top: 10.0,
          left: 10.0,
          child: new Text('燕云少君'),
        ),
        new Positioned(
          bottom: 10.0,
          right: 10.0,
          child: new Text('Adonis'),
        ),
      ],
    );
    return MaterialApp(
      title: 'Stack Widget Demo',
      home: Scaffold(
        appBar: new AppBar(title: new Text('Stack Widget')),
        body: Center(
          child: stack,
        )
      ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180.0,
          color: Colors.amber,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepPurple,
        )
      ],
    );
  } 
}