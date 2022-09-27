import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              icon: Icon(Icons.add_circle_rounded, color: Colors.grey),
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
      body: Column(
        children: [Text("Desked")],
      ),
    );
  }
}
