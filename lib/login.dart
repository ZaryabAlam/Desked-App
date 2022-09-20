import 'package:flutter/material.dart';

import 'home.dart';

class Log extends StatefulWidget {
  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
/////////////////////////////////////////////////////////////////////////////////
            ///
            SizedBox(
              height: _h * 0.08,
            ),
/////////////////////////////////////////////////////////////////////////////////
            ///
            ClipRRect(
              child: SizedBox.fromSize(
                size: Size.fromRadius(_h * 0.13),
                child: Image.network(
                  "https://i.ibb.co/wQ5nkJF/desked-logo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
/////////////////////////////////////////////////////////////////////////////////
            ///
            Center(
                child: Text(
              "Flutter Application Demostrator",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
            )),
/////////////////////////////////////////////////////////////////////////////////
            ///
            SizedBox(
              height: _h * 0.08,
            ),
/////////////////////////////////////////////////////////////////////////////////
            ///
            Container(
              height: _h * 0.07,
              width: _w * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 7),
                    )
                  ]),
              child: TextField(),
            ),
/////////////////////////////////////////////////////////////////////////////////
            ///
            SizedBox(
              height: _h * 0.03,
            ),
/////////////////////////////////////////////////////////////////////////////////
            ///
            Container(
              height: _h * 0.07,
              width: _w * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 7),
                    )
                  ]),
              child: TextField(),
            ),
/////////////////////////////////////////////////////////////////////////////////
            SizedBox(
              height: _h * 0.02,
            ),
/////////////////////////////////////////////////////////////////////////////////
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text(
                  "Forget your password?",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ),
/////////////////////////////////////////////////////////////////////////////////
            SizedBox(
              height: _h * 0.1,
            ),
/////////////////////////////////////////////////////////////////////////////////
            ///
            Center(
                child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 7),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [Colors.cyan[600], Colors.blue[200]])),
                    height: _h * 0.07,
                    width: _w * 0.9,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Text("Log In")))),
/////////////////////////////////////////////////////////////////////////////////
            SizedBox(
              height: _h * 0.1,
            ),
/////////////////////////////////////////////////////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                SizedBox(
                  width: _w * 0.01,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    "Create!",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
