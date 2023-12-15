import 'package:flutter/material.dart';
import 'package:lookie_app/screen/screen_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '휠씬', // WheelScene
      home: HomeScreen(), //home
    );
  }
}