import 'package:desked/new.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
        body: SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: _h * 0.3,
                  width: _w * 0.3,
                  child: Image.network("https://i.ibb.co/phMFH8K/corner1.png"),
                ),
              ],
            )),
            Positioned(
              left: -4,
              bottom: -2,
              child: Container(
                height: _h * 0.28,
                width: _w * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://i.ibb.co/Tvgwft0/corner2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
/////////////////////////////////////////////////////////////////////////////////
            Column(
              children: [
/////////////////////////////////////////////////////////////////////////////////
                SizedBox(
                  height: _h * 0.08,
                ),
/////////////////////////////////////////////////////////////////////////////////
                ///
                ClipRRect(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(_h * 0.13),
                    child: Image.network(
                      "https://i.ibb.co/KN3Gzkm/desked-logo.png",
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
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 7),
                        )
                      ]),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                      hintText: 'Email',
                      suffixIcon: Icon(Icons.person_pin_rounded),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
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
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 7),
                        )
                      ]),
                  child: TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.lock_rounded),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => New()));
                    },
                    child: Text(
                      "Forget your password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
/////////////////////////////////////////////////////////////////////////////////
                SizedBox(
                  height: _h * 0.07,
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
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [Colors.cyan[600], Colors.blue[200]])),
                        height: _h * 0.07,
                        width: _w * 0.9,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                            child: Text("Log In")))),
/////////////////////////////////////////////////////////////////////////////////
                SizedBox(
                  height: _h * 0.03,
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
                            MaterialPageRoute(builder: (context) => New()));
                      },
                      child: Text(
                        "Create!",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),

/////////////////////////////////////////////////////////////////////////////////
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: _h * 0.11,
                      width: _w * 0.11,
                      child: IconButton(
                          icon: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/2991/2991148.png",
                            fit: BoxFit.cover,
                          ),
                          onPressed: () async {
                            const url =
                                'https://accounts.google.com/v3/signin/identifier?dsh=S-251231302%3A1663782779691460&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F%26ogbl%2F&emr=1&ltmpl=default&ltmplcache=2&osid=1&passive=true&rm=false&scc=1&service=mail&ss=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=AQDHYWov1HYEBHuWBN_m80xuHQYWeafjv3SjrJPJWHgKO0hkWIU7vbUzR1H1up9hCzvJK9h74UO5iw';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          }),
                    ),
                    Container(
                      height: _h * 0.112,
                      width: _w * 0.112,
                      child: IconButton(
                          icon: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/4406/4406220.png",
                            fit: BoxFit.cover,
                          ),
                          onPressed: () async {
                            const url = 'https://www.facebook.com/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          }),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 10,
                  width: 10,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
