import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  List<dynamic> lst = ["Flutter Development"];
  var out = "";

  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white10,
/////////////////////////////////////////////////////////////////////////////////////////////////////
      appBar: AppBar(
        title: Text("Desked"),
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.menu_rounded), onPressed: () {}),
        actions: [
          IconButton(icon: Icon(Icons.swap_vert_rounded), onPressed: () {}),
          IconButton(icon: Icon(Icons.filter_alt_rounded), onPressed: () {}),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.cyan[600], Colors.blue[200]])),
        ),
      ),
/////////////////////////////////////////////////////////////////////////////////////////////////////
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.grey,
          elevation: 2,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: TextField(
                              onChanged: (value) {
                                out = value;
                              },
                            ),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    setState(() {
                                      lst.add(out);
                                    });
                                  },
                                  child: Text('Add'))
                            ],
                          );
                        });
                  },
                  child: Icon(Icons.add_circle_rounded, color: Colors.grey)),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit, color: Colors.grey),
              label: 'Edit',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.delete_rounded, color: Colors.grey),
              label: 'Delete',
            ),
          ]),
/////////////////////////////////////////////////////////////////////////////////////////////////////
      body: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (context, index) {
          return SafeArea(
              child: Column(
            children: [
              SizedBox(
                height: _h * 0.01,
              ),
/////////////////////////////////////////////////////////////////////////////////////////////////////
              Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(_h * 0.04),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 7),
                            )
                          ]),
                      height: _h * 0.20,
                      width: _w * 0.95,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("${lst[index]}"),
                            subtitle: Text("devCat - Zaryab Alam"),
                            leading: Icon(
                              Icons.person_pin_rounded,
                              color: Colors.cyan[600],
                            ),
                            trailing: Container(
                              width: _w * 0.15,
                              child: Row(
                                children: [
/////////////////////////////////////////////////////////////////////////////////////////////////////
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: TextField(
                                                onChanged: (value) {
                                                  out = value;
                                                },
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                      setState(() {
                                                        lst.replaceRange(index,
                                                            index + 1, {out});
                                                      });
                                                    },
                                                    child: Text('Edit'))
                                              ],
                                            );
                                          });
                                    },
                                    child: Icon(Icons.edit),
                                  ),
                                  SizedBox(
                                    width: 0,
                                  ),
/////////////////////////////////////////////////////////////////////////////////////////////////////
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        lst.removeAt(index);
                                      });
                                    },
                                    child: Icon(Icons.delete),
                                  )
                                ],
                              ),
                            ),
                          ),
/////////////////////////////////////////////////////////////////////////////////////////////////////
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "The quick fox jumps over a lazy dog The quick fox jumps over a lazy dog The quick fox jumps over a lazy dog",
                              ),
                            ),
                          ),
/////////////////////////////////////////////////////////////////////////////////////////////////////
                          SizedBox(
                            height: _h * 0.02,
                          ),
/////////////////////////////////////////////////////////////////////////////////////////////////////
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.location_on, color: Colors.grey),
                              Text("Karachi"),
                              Icon(Icons.calendar_today_rounded,
                                  color: Colors.grey),
                              Text("30 Sep 2022"),
                              Icon(Icons.access_time, color: Colors.grey),
                              Text("11:26"),
                            ],
/////////////////////////////////////////////////////////////////////////////////////////////////////
                          )
                        ],
                      )),
                ],
              )
            ],
          ));
        },
      ),
/////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////
    );
  }
}
