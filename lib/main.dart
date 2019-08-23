import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}):super(key: key);

  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('北京市石景山区政达路6号院', style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: new Text('光大信用卡中心'),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          new Divider(),
          ListTile(
            title: Text('北京市丰台区马家堡', style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: new Text('燕云少君'),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          new Divider(),
          ListTile(
            title: Text('北京市密云区新南路', style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: new Text('Adam:13901234567'),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          new Divider(),
        ],
      ),
    );
    return MaterialApp(
      title: 'Card Widget Demo',
      home: Scaffold(
        appBar: new AppBar(title: new Text('Card Widget')),
        body: Center(
          child: card,
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