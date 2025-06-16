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
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            color: Color(0xFFFAF7F0),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome to Moringa Project',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'GlacialIndifference',
                color: Color(0xFF3A1A14),
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Discover the natural benefits of Moringa for your skin, hair, and overall wellness.',
              style: TextStyle(fontSize: 16, fontFamily: 'GlacialIndifference'),
            ),
            SizedBox(height: 24),
            Text(
              '🌿 Skin & Hair Benefits',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'GlacialIndifference',
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Moringa helps with dryness, redness, and irritation. It supports glowing skin and stronger hair over time.',
              style: TextStyle(fontSize: 16, fontFamily: 'GlacialIndifference'),
            ),
            SizedBox(height: 24),
            Text(
              '✨ Featured Products',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'GlacialIndifference',
              ),
            ),
            SizedBox(height: 8),
            Text(
              '- Moringa Facial Oil\n- Herbal Hair Mist\n- Rejuvenating Body Balm',
              style: TextStyle(fontSize: 16, fontFamily: 'GlacialIndifference'),
            ),
          ],
        ),
      ),
    );
  }
}


