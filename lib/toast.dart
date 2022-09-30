import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Toa2 extends StatefulWidget {
  @override
  State<Toa2> createState() => _Toa2State();
}

class _Toa2State extends State<Toa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: GestureDetector(
            onTap: () {
              ToastContext().init(context);
              showToast("Show Bottom Toast", gravity: Toast.bottom);
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

void showToast(String msg, {duration, gravity}) {
  Toast.show(msg, duration: duration, gravity: gravity);
}
