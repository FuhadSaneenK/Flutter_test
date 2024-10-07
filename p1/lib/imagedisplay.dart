import 'package:flutter/material.dart';

class Imagedisplay extends StatefulWidget {
  const Imagedisplay({super.key});

  @override
  State<Imagedisplay> createState() => _ImagedisplayState();
}

class _ImagedisplayState extends State<Imagedisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Gallery',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
        elevation: 2,
      ),
      body: Center( // Centering the Row
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centering horizontally
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centering vertically
              children: [
                Container(
                  width: 180, // Adjusted width
                  height: 180, // Adjusted height
                  decoration: BoxDecoration(
                    color: Colors.amber.shade100, // Background color
                    borderRadius: BorderRadius.circular(15), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Soft shadow
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15), // Clip the corners
                    child: Image.asset(
                      "assets/images/image1.jpg", // Local image
                      fit: BoxFit.cover, // Fit the image within the container
                    ),
                  ),
                ),
                const SizedBox(height: 10), // Spacing between image and label
                const Text(
                  'Local Image',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(width: 20), // Spacing between two columns
            Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centering vertically
              children: [
                Container(
                  width: 180, // Adjusted width
                  height: 180, // Adjusted height
                  decoration: BoxDecoration(
                    color: Colors.amber.shade100, // Background color
                    borderRadius: BorderRadius.circular(15), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Soft shadow
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15), // Clip the corners
                    child: Image.network(
                      "https://media.istockphoto.com/id/1317323736/photo/a-view-up-into-the-trees-direction-sky.jpg?s=612x612&w=0&k=20&c=i4HYO7xhao7CkGy7Zc_8XSNX_iqG0vAwNsrH1ERmw2Q=", // Network image
                      fit: BoxFit.cover, // Fit the image within the container
                    ),
                  ),
                ),
                const SizedBox(height: 10), // Spacing between image and label
                const Text(
                  'Network Image',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Imagedisplay(),
  ));
}
