import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TurkBayragi(g: 250),
          TurkBayragi(g: 200),
          TurkBayragi(g: 150),
          TurkBayragi(g: 100)
        ],
      ),
    );
  }
}

class TurkBayragi extends StatelessWidget {
  final double g;
  TurkBayragi({this.g = 200});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: g,
          width: g * 1.5,
          color: Colors.red,
        ),
        Positioned(
          top: 0.25 * g,
          left: 0.25 * g,
          child: Container(
            height: 0.5 * g,
            width: 0.5 * g,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 0.3 * g,
          left: 0.3625 * g,
          child: Container(
            width: 0.4 * g,
            height: 0.4 * g,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.red),
          ),
        ),
        Positioned(
          left: 0.675 * g,
          top: 0.415 * g,
          child: Container(
            child: Transform(
              transform: Matrix4.rotationZ(6),
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 0.25 * g,
              ),
            ),
          ),
        )
      ],
    );
  }
}
