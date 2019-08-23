import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

void main(List<String> args) {
  runApp(MaterialApp(
    title: 'Page Back Data',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get Phone Number'),),
      body: Center(child: RouteButton(),) 
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){_navigateToLittleGile(context);},
      child: Text('See Little Gril'),
    );
  }

  _navigateToLittleGile(BuildContext context) async {
    final result = await Navigator.push(context, MaterialPageRoute(
      builder: (context) => LittleGril()
    ));
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('${result}'),));
  }
}

class LittleGril extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('I am a little gril.'),),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('long leg little gril'),
              onPressed: (){
                Navigator.pop(context, 'long leg little gril, 13801234567');
              },
            ),
            RaisedButton(
              child: Text('big bar little gril'),
              onPressed: (){
                Navigator.pop(context, 'big bar little gril, 13901234567');
              },
            )
          ],
        ),
      ),
    );
  }
}