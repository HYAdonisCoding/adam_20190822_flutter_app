import 'package:flutter/material.dart';

class KeepAliveWidget extends StatefulWidget {
  @override
  _KeepAliveWidgetState createState() => _KeepAliveWidgetState();
}

class _KeepAliveWidgetState extends State<KeepAliveWidget> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() { 
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KeepAliveDemo'),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          MyHomePage(),
          MyHomePage(),
          MyHomePage(),
        ],),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin {
  int _counter = 0;
  @override
  bool get wantKeepAlive => true;

  void _increasementCounter() {
    setState(() { _counter++;});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点一次加一个数字'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increasementCounter,
        tooltip: 'Increase',
        child: Icon(Icons.add),
      ),
    );
  }
}