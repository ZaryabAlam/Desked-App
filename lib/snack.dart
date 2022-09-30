import 'package:flutter/material.dart';

class Toa1 extends StatefulWidget {
  @override
  State<Toa1> createState() => _Toa1State();
}

class _Toa1State extends State<Toa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: const Text('Added to favorite'),
              ));
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
