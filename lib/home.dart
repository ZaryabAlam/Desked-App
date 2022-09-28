import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  List<dynamic> lst = [""];
  var out = "";

  Widget build(BuildContext context) {
    final _h = MediaQuery.of(context).size.height;
    final _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
              Container(
                decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(_h * 0.04)),
                height: _h * 0.20,
                width: _w * 0.95,
                child: ListTile(
                  title: Text("${lst[index]}"),
                  trailing: Container(
                    padding: const EdgeInsets.only(top: 10),
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
                                            Navigator.of(context).pop();
                                            setState(() {
                                              lst.replaceRange(
                                                  index, index + 1, {out});
                                            });
                                          },
                                          child: Text('Edit'))
                                    ],
                                  );
                                });
                          },
                          child: Icon(Icons.edit),
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
              )
            ],
          ));
        },
      ),
/////////////////////////////////////////////////////////////////////////////////////////////////////
      floatingActionButton: FloatingActionButton(onPressed: () {
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
      }),
/////////////////////////////////////////////////////////////////////////////////////////////////////
    );
  }
}
