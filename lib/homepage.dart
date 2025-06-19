import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

  // Placeholder data for the new widget grid
  final List<Map<String, dynamic>> _placeholderWidgets = [
    {'title': 'Widget 1', 'icon': Icons.eco},
    {'title': 'Widget 2', 'icon': Icons.local_florist},
    {'title': 'Widget 3', 'icon': Icons.spa},
    {'title': 'Widget 4', 'icon': Icons.nature},
    {'title': 'Widget 5', 'icon': Icons.healing},
  ];

  // Function to launch YouTube video with multiple fallback URLs
  Future<void> _launchYouTubeVideo() async {
    final List<String> urls = [
      'https://www.youtube.com/watch?v=pWmcxgWQijA', // Full YouTube URL
      'https://youtu.be/pWmcxgWQijA',                // Short YouTube URL
      'https://m.youtube.com/watch?v=pWmcxgWQijA',   // Mobile YouTube URL
    ];
    
    bool launched = false;
    
    for (String urlString in urls) {
      try {
        final Uri url = Uri.parse(urlString);
        
        if (await canLaunchUrl(url)) {
          await launchUrl(
            url,
            mode: LaunchMode.externalApplication,
          );
          launched = true;
          debugPrint('Successfully launched: $urlString');
          break;
        }
      } catch (e) {
        debugPrint('Failed to launch $urlString: $e');
        continue;
      }
    }
    
    // If none of the URLs worked, try opening in browser mode
    if (!launched) {
      try {
        final Uri fallbackUrl = Uri.parse('https://www.youtube.com/watch?v=pWmcxgWQijA');
        await launchUrl(
          fallbackUrl,
          mode: LaunchMode.inAppBrowserView, // Opens in app browser
        );
        launched = true;
        debugPrint('Opened in browser view');
      } catch (e) {
        debugPrint('Browser fallback failed: $e');
      }
    }
    
    // Show error message if nothing worked
    if (!launched && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Could not open video. Please check your internet connection.'),
          backgroundColor: const Color(0xFF47734E),
          action: SnackBarAction(
            label: 'Retry',
            textColor: const Color(0xFFFAF7F0),
            onPressed: _launchYouTubeVideo,
          ),
        ),
      );
    }
  }

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Video thumbnail section
            Container(
              margin: const EdgeInsets.all(16),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // YouTube thumbnail image
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: NetworkImage('https://img.youtube.com/vi/pWmcxgWQijA/maxresdefault.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  
                  // Dark overlay for better text visibility
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.3),
                          Colors.black.withValues(alpha: 0.6),
                        ],
                      ),
                    ),
                  ),
                  
                  // Play button overlay
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.7),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFFAF7F0),
                          width: 3,
                        ),
                      ),
                      child: const Icon(
                        Icons.play_arrow,
                        size: 20,
                        color: Color(0xFFFAF7F0),
                      ),
                    ),
                  ),
                  
                  // Bottom text overlay
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withValues(alpha: 0.8),
                          ],
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Moringa: Farm To Face',
                            style: TextStyle(
                              color: Color(0xFFFAF7F0),
                              fontSize: 18,
                              fontFamily: 'GlacialIndifference',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                Icons.play_circle_outline,
                                color: Color(0xFFFAF7F0),
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Tap to watch on YouTube',
                                style: TextStyle(
                                  color: Color(0xFFFAF7F0),
                                  fontSize: 14,
                                  fontFamily: 'GlacialIndifference',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  // Tap detector
                  Positioned.fill(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: _launchYouTubeVideo,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // page indicator dots
            _buildPageIndicator(),
            
            // swipeable cards
            SizedBox(
              height: 450,
              child: _buildSwipeableCards(),
            ),
            
            // New Horizontal Widget Section
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Quick Access',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF47734E),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _placeholderWidgets.length,
                      itemBuilder: (context, index) {
                        final widget = _placeholderWidgets[index];
                        return Container(
                          width: 85,
                          margin: EdgeInsets.only(
                            right: index < _placeholderWidgets.length - 1 ? 12 : 0,
                          ),
                          child: _buildPlaceholderWidget(widget),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
          ],
        ),
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
                height: 350,
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
        padding: const EdgeInsets.all(16),
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
              height: 140,
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
            
            const SizedBox(height: 16),
            
            // title
            Text(
              cardData['title'],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'GlacialIndifference',
                color: Color(0xFF3A1A14),
              ),
            ),
            
            const SizedBox(height: 8),
            
            // description
            Expanded(
              child: Text(
                cardData['description'],
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'GlacialIndifference',
                  color: Color(0xFF3A1A14),
                  height: 1.4,
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // action button
            SizedBox(
              width: double.infinity,
              height: 45,
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
                    const Icon(Icons.add_shopping_cart, size: 18),
                    const SizedBox(width: 8),
                    Text(
                      cardData['action'],
                      style: const TextStyle(
                        fontFamily: 'GlacialIndifference',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
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

  Widget _buildPlaceholderWidget(Map<String, dynamic> widgetData) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE8E5DC),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFF47734E).withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            debugPrint('${widgetData['title']} tapped');
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  widgetData['icon'],
                  size: 32,
                  color: const Color(0xFF47734E),
                ),
                const SizedBox(height: 8),
                Text(
                  widgetData['title'],
                  style: const TextStyle(
                    fontFamily: 'GlacialIndifference',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color(0xFF3A1A14),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}