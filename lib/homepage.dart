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
      'title': 'What is Moringa Project',
      'description': 'Learn about our mission and how we use Moringa trees to create sustainable products.',
      'image': 'assets/images/whatismoringa.webp',
      'action': 'Learn More'
    },
    {
      'title': 'What is Moringa Benefits',
      'description': 'Discover the amazing health and wellness benefits of Moringa.',
      'image': 'assets/images/benefits.webp',
      'action': 'Explore Benefits'
    },
    {
      'title': 'Wellness Guide',
      'description': 'Your complete guide to incorporating Moringa into your wellness routine.',
      'image': 'assets/images/wellness.webp',
      'action': 'View Guide'
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
          SizedBox(
            height: 500, // Fixed height for the entire swipeable card area
            child: _buildSwipeableCards(),
          ),
          
          const SizedBox(height: 20),
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
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
                height: 350, // Set fixed height for entire card
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
        padding: const EdgeInsets.all(16), // Reduced padding
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
            // Image area
            Container(
              height: 140, // Restored image height for better proportions
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
            
            const SizedBox(height: 16), // Reduced spacing
            
            // title
            Text(
              cardData['title'],
              style: const TextStyle(
                fontSize: 20, // Slightly reduced font size
                fontWeight: FontWeight.bold,
                fontFamily: 'GlacialIndifference',
                color: Color(0xFF3A1A14),
              ),
            ),
            
            const SizedBox(height: 8), // Reduced spacing
            
            // description
            Expanded(
              child: Text(
                cardData['description'],
                style: const TextStyle(
                  fontSize: 14, // Slightly reduced font size
                  fontFamily: 'GlacialIndifference',
                  color: Color(0xFF3A1A14),
                  height: 1.4,
                ),
              ),
            ),
            
            const SizedBox(height: 16), // Reduced spacing
            
            // action button
            SizedBox(
              width: double.infinity,
              height: 45, // Slightly reduced button height
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
                    const Icon(Icons.add_shopping_cart, size: 18), // Slightly smaller icon
                    const SizedBox(width: 8),
                    Text(
                      cardData['action'],
                      style: const TextStyle(
                        fontFamily: 'GlacialIndifference',
                        fontWeight: FontWeight.bold,
                        fontSize: 14, // Slightly reduced font size
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