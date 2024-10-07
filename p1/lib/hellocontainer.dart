import 'package:flutter/material.dart';

class Hellocontainer extends StatefulWidget {
  const Hellocontainer({super.key});

  @override
  State<Hellocontainer> createState() => _HellocontainerState();
}

class _HellocontainerState extends State<Hellocontainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Container Example"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0), // Add padding inside the container
          decoration: BoxDecoration(
            color: Colors.teal.shade100, // Background color of the container
            borderRadius: BorderRadius.circular(15), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Shadow color
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: const Text(
            "Hello World",
            style: TextStyle(
              fontSize: 24,
              color: Color.fromRGBO(0, 150, 136, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Hellocontainer(),
  ));
}
