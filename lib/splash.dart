import 'package:flutter/material.dart';
import 'main_navigation.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();

    // auto navigate after 5 seconds to main_navigation instead of HomePage
    Future.delayed(const Duration(seconds: 6), () {
      if (mounted) { // check if widget is still mounted
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const MainNavigation()),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            FadeTransition(
              opacity: _animation,
              child: Image.asset(
                'assets/images/MP circle blk.png',
                width: 500,
                height: 500,
                fit: BoxFit.contain,
              ),
            ),
            FadeTransition(
              opacity: _animation,
              child: const Text(
                'Welcome to\nMoringa Project',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'GlacialIndifference',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF47734E),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

