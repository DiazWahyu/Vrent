//import 'dart:html';

import 'package:flutter/material.dart';


import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class HomePage extends StatefulWidget {
  static const route = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int _selectedIndex = 0;

  // 8
  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    const Card1(),
    //Container(color: Colors.red),
    // TODO: Replace with Card2
    const Card2(),
    // Container(color: Colors.green),
    // TODO: Replace with Card3
    const Card3(),
    // Container(color: Colors.blue)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //final prov = Provider.of<Products>(context);
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // TODO: Set selected tab bar
        // 10
        currentIndex: _selectedIndex,
        // 11
        onTap: _onItemTapped,
        // 6
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Catalogs',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.note_add),
            label: 'Booking',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

}
