import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1), // Soft background color
      appBar: AppBar(
        backgroundColor: Colors.white, // AppBar background color
        elevation: 0, // No shadow under AppBar
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Text(
          "Hello World",
          style: TextStyle(
            fontFamily: 'Montserrat', // Custom font or default system font
            fontSize: 32,
            color: Color.fromRGBO(0, 150, 136, 1), // Stylish purple color
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2, // Slightly increased letter spacing
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Homepage(),
  ));
}
