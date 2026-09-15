import 'package:flutter/material.dart';

void main() {
  List<int> a = [2,4,6,8];
  List<int> b=[...a,
    if (a.length%2 == 0) 2 else 3,
    for (var x in a) x+1];
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: Scaffold(
        body: Text("hello"),
      ),
    );
  }
}