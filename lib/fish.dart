import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Fish extends StatefulWidget {
  @override
  FishState createState() => new FishState();
}

class FishState extends State<Fish> {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _width = logicalSize.width;
    final double _height = logicalSize.height;
    double _rectHeight = 50.0;
    double _rectWidth = 100.0;
    return new Scaffold(
        body: new Stack(children: <Widget>[
      new Positioned(
          bottom: 0.0,
          left: 0.0,
          top: _height - _rectHeight,
          right: 0.0,
          child: new CustomPaint(
            painter: new Sky(_rectWidth, _rectHeight),
            child: new Text('$_width'),
          )),
    ]));
  }
}

class Sky extends CustomPainter {
  final double _rectWidth;
  final double _rectHeight;

  Sky(this._rectWidth, this._rectHeight);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
      new Rect.fromLTRB(0.0, 0.0, this._rectWidth, _rectHeight),
      new Paint()..color = new Color(0xFF0099FF),
    );
  }

  @override
  bool shouldRepaint(Sky oldDelegate) {
    return false;
  }
}
