// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:p1/hellocontainer.dart'; // Hello World with Container screen
import 'package:p1/home.dart'; // Plain Hello World screen
import 'package:p1/imagedisplay.dart'; // Page with local and web image

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _currentIndex = 0;

  // List of screens to navigate between
  final List<Widget> _screens = [
    const Homepage(), // Plain Hello World screen
    const Hellocontainer(), // Hello World with Container screen
    const Imagedisplay(), // Image display screen
  ];

  // Function to handle item taps
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Bottom Navigation",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: _screens[_currentIndex], // Displaying the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Set the current active tab
        onTap: _onTabTapped, // Handle taps on items
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.teal), // Icon for Hello World
            label: 'Hello',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.teal), // Icon for Hello with Container
            label: 'Hello Container',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image, color: Colors.teal), // Icon for Images
            label: 'Images',
          ),
        ],
        selectedItemColor: Colors.teal, // Selected item color
        unselectedItemColor: Colors.black54, // Unselected item color
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Bottomnavigation(),
  ));
}
