import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Learn About Moringa',
          style: TextStyle(
            fontFamily: 'GlacialIndifference',
            color: Color(0xFFFAF7F0),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Moringa is a powerful plant known for its antioxidant and anti-inflammatory properties. It nourishes your skin and improves overall wellness.',
          style: TextStyle(fontSize: 16, fontFamily: 'GlacialIndifference'),
        ),
      ),
    );
  }
}
