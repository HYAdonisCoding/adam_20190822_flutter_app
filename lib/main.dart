import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adam Flutter Demo',
      home: Scaffold(
        appBar: new AppBar(title: new Text('GridView Widget')),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 2.0
            ),
            children: <Widget>[
              new Image.network('http://img5.mtime.cn/mg/2019/08/23/111547.33075165_285X160X4.jpg', fit: BoxFit.cover),
              new Image.network('http://img5.mtime.cn/mg/2019/08/23/103636.40668859_285X160X4.jpg', fit: BoxFit.cover),
              new Image.network('http://img5.mtime.cn/mg/2019/08/23/103532.58790369_285X160X4.jpg', fit: BoxFit.cover),
              new Image.network('http://img5.mtime.cn/mg/2019/08/23/101717.21164296_285X160X4.jpg', fit: BoxFit.cover),
              new Image.network('http://img5.mtime.cn/mg/2019/08/23/100625.19492817_285X160X4.jpg', fit: BoxFit.cover),
              new Image.network('http://img5.mtime.cn/mg/2019/08/23/093258.22915266_285X160X4.jpg', fit: BoxFit.cover),
              new Image.network('http://img5.mtime.cn/mg/2019/08/23/100110.35589457_280X138X4.jpg', fit: BoxFit.cover),
              new Image.network('http://img5.mtime.cn/mg/2019/08/23/110602.63034284_280X138X4.jpg', fit: BoxFit.cover),
              new Image.network('http://img5.mtime.cn/mg/2019/08/23/100725.48978072_280X138X4.jpg', fit: BoxFit.cover),
              new Image.network('http://img5.mtime.cn/mg/2019/08/23/001325.58040992_280X138X4.jpg', fit: BoxFit.cover),
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