import 'package:flutter/material.dart';
import 'package:tomato_final/pages/upload.dart';
import 'package:tomato_final/pages/result.dart';
import 'package:tomato_final/pages/list_disease.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    UploadImage(),
    // Text(
    //   'Index 1: Diseases',
    //   style: optionStyle,
    // ),
    ListDisease(),
    Result(),
    Text(
      'Coming Soon',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.grey[100],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.list),
            label: 'Diseases',
            backgroundColor: Colors.grey[100],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.online_prediction_outlined),
            label: 'Prediction',
            backgroundColor: Colors.grey[100],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.grey[100],
          ),
        ],

        currentIndex: _selectedIndex,
        elevation: 10,
        unselectedItemColor: Colors.grey[500],
        selectedItemColor: Colors.blue[800],
        iconSize: 30,
        onTap: _onItemTapped,
      ),
    );
  }
}
