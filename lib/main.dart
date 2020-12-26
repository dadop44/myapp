import 'package:flutter/material.dart';
import 'package:myapp/home/home.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: HomeLayout(),
    );
  }
}
