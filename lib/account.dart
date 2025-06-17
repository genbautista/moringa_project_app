import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Account',
          style: TextStyle(
            fontFamily: 'GlacialIndifference',
            color: Color(0xFFFAF7F0),
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Account',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'GlacialIndifference',
            color: Color(0xFF3A1A14),
          ),
        ),
      ),
    );
  }
}
