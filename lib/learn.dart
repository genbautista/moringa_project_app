import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    final options = [
      {'name': 'Spa Experience'},
      {'name': 'Practitioners'},
      {'name': 'Our recommendations'}
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Moringa Project: Guide to Wellness',
          style: TextStyle(
            fontFamily: 'GlacialIndifference',
            color: Color(0xFFFAF7F0),
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: options.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          final option = options[index];
          return Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFE8E5DC),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.spa, size: 40, color: Color(0xFF47734E)),
                const SizedBox(height: 8),
                Text(option['name']!,
                  style: const TextStyle(
                    fontFamily: 'GlacialIndifference',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
