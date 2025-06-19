import 'package:flutter/material.dart';
import 'homepage.dart';

class ViewGuide extends StatefulWidget {
  const ViewGuide({super.key});

  @override
  State<ViewGuide> createState() => _ViewGuideState();
}

class _ViewGuideState extends State<ViewGuide> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'View Guide',
          style: TextStyle(
            fontFamily: 'GlacialIndifference',
            color: Color(0xFFFAF7F0),
          ),
        ),
      ),
    );
  }
}