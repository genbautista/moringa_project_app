import 'package:flutter/material.dart';
import 'homepage.dart';

class ExploreBenefits extends StatefulWidget {
  const ExploreBenefits({super.key});

  @override
  State<ExploreBenefits> createState() => _ExploreBenefitsState();
}

class _ExploreBenefitsState extends State<ExploreBenefits> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Explore Benefits',
          style: TextStyle(
            fontFamily: 'GlacialIndifference',
            color: Color(0xFFFAF7F0),
          ),
        ),
      ),
    );
  }
}