import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

// Waves
import 'wave.dart';

// Fishes
import 'fish.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Fish(),
    );
  }
}