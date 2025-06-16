import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Moringa Project',
          style: TextStyle(
            fontFamily: 'GlacialIndifference',
            color: Color(0xFFFAF7F0),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Color(0xFFFAF7F0),
            onPressed: () {
              // Add search functionality here
              debugPrint('Search tapped');
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            color: Color(0xFFFAF7F0),
            onPressed: () {
              debugPrint('Bag tapped');
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome to the Moringa Home Page!',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'GlacialIndifference',
            color: Color(0xFF3A1A14),
          ),
        ),
      ),
    );
  }
}
