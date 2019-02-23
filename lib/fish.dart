import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math';

class Fish extends StatefulWidget {
  @override
  FishState createState() => new FishState();
}

class FishState extends State<Fish> {
  @override
  Widget build(BuildContext context) {
      double _height = MediaQuery
          .of(context)
          .size
          .height;
      double _width = MediaQuery
          .of(context)
          .size
          .width;
      double _rectHeight, _rectWidth;
      int _speed;
      int size = new Random().nextInt(5); // Fish's size and speed detection
      switch (size) { // Fish's size
        case 0: // Smallest + Fastest
          _rectHeight = 10.0;
          _rectWidth = 10.0;
          _speed = 5;
          break;
        case 1: // Smaller + Faster
          _rectHeight = 20.0;
          _rectWidth = 20.0;
          _speed = 4;
          break;
        case 2: // Middle
          _rectHeight = 30.0;
          _rectWidth = 30.0;
          _speed = 3;
          break;
        case 3: // Bigger + Slower
          _rectHeight = 40.0;
          _rectWidth = 40.0;
          _speed = 2;
          break;
        case 4: // Biggest + Slowest
          _rectHeight = 50.0;
          _rectWidth = 50.0;
          _speed = 1;
          break;
        default: // If something went wrong, it will be Middle
          _rectHeight = 30.0;
          _rectWidth = 30.0;
          _speed = 3;
          break;
      }
      double rndY, rndX; // generates randomly
      switch (new Random().nextInt(3)) { // three cases for fish to start
        case 0: // from left
          rndX = 0.0 - _rectWidth / 2;
          rndY = _rectHeight + new Random()
              .nextInt((_height - _rectHeight * 2).toInt())
              .toDouble();
          break;
        case 1: // from bottom
          rndX = new Random().nextInt((_width - _rectWidth).toInt()).toDouble();
          rndY = _height - _rectHeight * _speed;
          break;
        case 2: // from right
          rndX = MediaQuery
              .of(context)
              .size
              .width - _rectWidth / 2;
          rndY = _rectHeight + new Random()
              .nextInt((_height - _rectHeight * 2).toInt())
              .toDouble();
          break;
        default: // if something went wrong, fish will be generated at the center of bottom
          rndX = _width / 2 - _rectWidth / 2;
          rndY = _height - _rectHeight * 2;
      }
      return new Scaffold(
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          body: new Stack(children: <Widget>[
            new Positioned(
                left: rndX,
                top: rndY,
                child: new Container(
                  height: _rectHeight,
                  width: _rectWidth,
                  decoration: new BoxDecoration(
                      border: new Border.all(color: Colors.black)),
                )),
          ]));
    }
}
