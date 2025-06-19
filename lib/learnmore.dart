import 'package:flutter/material.dart';
import 'homepage.dart';

class LearnMore extends StatefulWidget {
  const LearnMore({super.key});

  @override
  State<LearnMore> createState() => _LearnMoreState();
}

class _LearnMoreState extends State<LearnMore> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Learn More',
          style: TextStyle(
            fontFamily: 'GlacialIndifference',
            color: Color(0xFFFAF7F0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          
        )
      )
    );
  }
}