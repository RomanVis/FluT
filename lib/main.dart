import 'package:flutter/material.dart';
import 'package:project/List.dart';

void main() => runApp(ccTracker());

class ccTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hmm',
      theme: ThemeData(
        primaryColorLight: Colors.white
      ),
      home: ccList(),
    );
  }
}


