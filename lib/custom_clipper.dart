import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: BottomClipper(),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200.0,
            ),
          )
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  final space = 60;
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-space);
    var firstControlPoint = Offset(size.width*0.5, size.height); 
    var firstEnddPoint = Offset(size.width, size.height-space); 
    path.quadraticBezierTo(firstControlPoint.dx, 
    firstControlPoint.dy, 
    firstEnddPoint.dx, 
    firstEnddPoint.dy);
    path.lineTo(size.width, size.height-space);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    
    return false;
  }
}