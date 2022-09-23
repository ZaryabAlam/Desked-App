import 'package:desked/home.dart';
import 'package:desked/login.dart';
import 'package:desked/top1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Log(),
      ),
    );
  }
}
