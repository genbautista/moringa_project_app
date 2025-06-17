 import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.75);
  int _currentPage = 0;

  final List<Map<String, dynamic>> _moringaCards = [
    {
      'title': 'What is Moringa',
      'description': 'Learn more about how we use Moringa trees to cultivate our products.',
      'image': 'assets/images/whatismoringa.webp',
      'action': 'Learn More'
    },
    {
      'title': 'Moringa Benefits',
      'description': 'Discover the amazing health and wellness benefits of Moringa.',
      'image': 'assets/images/benefits.webp',
      'action': 'Explore Benefits'
    },
    {
      'title': 'Our Products',
      'description': 'Explore our range of premium Moringa-based skincare products.',
      'image': 'assets/images/productimage.webp',
      'action': 'Shop Now'
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
            color: const Color(0xFFFAF7F0),
            onPressed: () {
              debugPrint('Search tapped');
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            color: const Color(0xFFFAF7F0),
            onPressed: () {
              debugPrint('Bag tapped');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // page indicator dots
          _buildPageIndicator(),
          
          // swipeable cards
          Expanded(
            child: _buildSwipeableCards(),
          ),
          
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildLearnMoreSection() {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFE8E5DC),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Moringa Oil - Learn More',
              style: TextStyle(
                color: Color(0xFF3A1A14),
                fontSize: 18,
                fontFamily: 'GlacialIndifference',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFF47734E),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.arrow_forward,
              color: Color(0xFFFAF7F0),
              size: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          _moringaCards.length,
          (index) => Container(
            width: _currentPage == index ? 24 : 8,
            height: 8,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: _currentPage == index 
                  ? const Color(0xFF47734E) 
                  : const Color(0xFFE8E5DC),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSwipeableCards() {
    return PageView.builder(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          _currentPage = index;
        });
      },
      itemCount: _moringaCards.length,
      itemBuilder: (context, index) {
        return AnimatedBuilder(
          animation: _pageController,
          builder: (context, child) {
            double value = 0;
            if (_pageController.position.haveDimensions) {
              value = index.toDouble() - (_pageController.page ?? 0);
              value = (value * 0.038).clamp(-1, 1);
            }
            return Transform.rotate(
              angle: value,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                child: _buildMoringaCard(_moringaCards[index], index == _currentPage),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildMoringaCard(Map<String, dynamic> cardData, bool isActive) {
    return Card(
      elevation: isActive ? 12 : 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFFAF7F0),
          borderRadius: BorderRadius.circular(20),
          border: isActive 
              ? Border.all(color: const Color(0xFF47734E), width: 2)
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image area with better visual indication
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFE8E5DC),
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(cardData['image']),
                  fit: BoxFit.cover,
                  onError: (exception, stackTrace) {
                    // Fallback if image doesn't exist
                  },
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.eco,
                  size: 60,
                  color: Color(0xFF47734E),
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            // title
            Text(
              cardData['title'],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'GlacialIndifference',
                color: Color(0xFF3A1A14),
              ),
            ),
            
            const SizedBox(height: 12),
            
            // description
            Expanded(
              child: Text(
                cardData['description'],
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'GlacialIndifference',
                  color: Color(0xFF3A1A14),
                  height: 1.4,
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            // action button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('${cardData['action']} pressed');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF47734E),
                  foregroundColor: const Color(0xFFFAF7F0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.add_shopping_cart, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      cardData['action'],
                      style: const TextStyle(
                        fontFamily: 'GlacialIndifference',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}