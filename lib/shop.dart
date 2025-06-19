import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {'name': 'Moringa Hair Oil', 'price': '\$25'},
      {'name': 'Moringa Face Cream', 'price': '\$30'},
      {'name': 'Moringa Body Lotion', 'price': '\$20'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Shop',
          style: TextStyle(
            fontFamily: 'GlacialIndifference',
            color: Color(0xFFFAF7F0),
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          mainAxisSpacing: 16, 
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          final product = products[index];
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
                Text(
                  product['name']!,
                  style: const TextStyle(
                    fontFamily: 'GlacialIndifference',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
              ],
            ),
          );
        },
      ),
    );
  }
}