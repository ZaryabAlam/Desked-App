import 'package:flutter/material.dart';

class New extends StatefulWidget {
  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.warning_rounded,
              size: 130,
              color: Colors.grey,
            ),
            Text(
              "More coming soon!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w100,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
