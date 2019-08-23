import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adam Flutter Demo',
      home: Scaffold(
        appBar: new AppBar(title: new Text('ListView Widget')),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.perm_camera_mic),
              title: new Text('perm_camera_mic'),
            ),
            new ListTile(
              leading: new Icon(Icons.add_call),
              title: new Text('add_call'),
            ),
            new ListTile(
              leading: new Icon(Icons.access_alarm),
              title: new Text('access_alarm'),
            ),
            new Image.network('https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=a9e671b9a551f3dedcb2bf64a4eff0ec/4610b912c8fcc3cef70d70409845d688d53f20f7.jpg'),
            new Image.network('https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=d985fb87d81b0ef473e89e5eedc551a1/b151f8198618367aa7f3cc7424738bd4b31ce525.jpg'),
            new Image.network('https://ss3.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=b5e4c905865494ee982209191df4e0e1/c2cec3fdfc03924590b2a9b58d94a4c27d1e2500.jpg')
          ],
        ),
      ),
    );
  }
}