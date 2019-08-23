import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation',
    home: new FirstScreen(),
    )
  );
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: Center(
        child: RaisedButton(
          child: Text('Detail Button'),
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(
              builder: (context) => new SecondSreen())
              );
          },
        ),
        ),
    );
  }
}

class SecondSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail'),),
      body: Center(child: RaisedButton(
        child: Text('Back'),
        onPressed: (){
          Navigator.pop(context);
        },
      ),),
    );
  }
}