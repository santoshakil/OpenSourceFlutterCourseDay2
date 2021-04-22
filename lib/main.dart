import 'package:day2/body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Day2());
}

class Day2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Body(),
      ),
    );
  }
}
