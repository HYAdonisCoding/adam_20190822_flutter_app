import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        appBar: new AppBar(title: new Text('Row Widget')),
        body: new Row(
          children: <Widget>[
            //不灵活的
             new RaisedButton(
                onPressed: (){},
                color: Colors.red,
                child: new Text('Red'),
              ),
              //灵活的布局
            Expanded(
              child: new RaisedButton(
                onPressed: (){},
              color: Colors.orangeAccent,
              child: new Text('orange Button'),
              ),
            ),
            new RaisedButton(
                onPressed: (){},
                color: Colors.lightBlue,
                child: new Text('lightBlue'),
              ),
          ],
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