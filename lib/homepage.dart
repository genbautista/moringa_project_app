import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'learnmore.dart';
import 'viewguide.dart';
import 'explorebenefits.dart';
import 'shop.dart';
import 'webview_article.dart';

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
      'description':
          'Learn about our mission and how we use Moringa trees to create sustainable products.',
      'image': 'assets/images/whatismoringa.webp',
      'action': 'Learn More',
      'route': LearnMore(),
    },
    {
      'title': 'What is Moringa Benefits',
      'description':
          'Discover the amazing health and wellness benefits of Moringa.',
      'image': 'assets/images/benefits.webp',
      'action': 'Explore Benefits',
      'route': ExploreBenefits(),
    },
    {
      'title': 'Wellness Guide',
      'description':
          'Your complete guide to incorporating Moringa into your wellness routine.',
      'image': 'assets/images/wellness.webp',
      'action': 'View Guide',
      'route': ViewGuide(),
    },
    {
      'title': 'Our Products',
      'description':
          'Explore our range of premium Moringa-based skincare products.',
      'image': 'assets/images/productimage.webp',
      'action': 'Shop Now',
      'route': ShopPage(),
    },
  ];

  // placeholder data for the new widget grid
  final List<Map<String, dynamic>> _placeholderWidgets = [
    {
      'title': 'Moringa Facial Oil',
      'url': 'assets/images/moringa_facial_oil.webp',
    },
    {
      'title': 'Clay Face Mask',
      'url': 'assets/images/moringa_clay_face_mask.webp',
    },
    {'title': 'Moringa Body Oil', 'url': 'assets/images/moringa_body_oil.webp'},
    {'title': 'Moringa Hair Oil', 'url': 'assets/images/moringa_hair_oil.webp'},
    {'title': 'Pampering Set', 'url': 'assets/images/pampering_set.webp'},
  ];

  // REAL Moringa Love Blog articles from your website (LATEST TO OLDEST)
  final List<Map<String, dynamic>> _blogWidgets = [
    {
      'title': '5 Things Nobody Tells You About Your Skin When You Travel',
      'subtitle': 'Travel & Wellness',
      'icon': Icons.flight_takeoff,
      'url':
          'https://www.moringaprojectthailand.com/blogs/news/5-things-nobody-tells-you-about-your-skin-when-you-travel',
      'description':
          'Travel is great for your mind, but not always for your skin. Long flights, pollution, unfamiliar water, and changing weather can all throw your skin off balance.',
      'imageUrl': 'assets/images/5_things.webp',
    },
    {
      'title': 'Wellness on the Go: How to Stay Healthy Whilst Traveling',
      'subtitle': 'Travel & Wellness',
      'icon': Icons.flight_takeoff,
      'url':
          'https://www.moringaprojectthailand.com/en-us/blogs/news/wellness-on-the-go-how-to-stay-healthy-whilst-traveling',
      'description':
          'Travel can be rewarding, but it often disrupts our routines. Learn how to maintain balance while traveling.',
      'imageUrl': 'assets/images/wellness_on_the_go.webp',
    },
    {
      'title': 'Moringa Oil for Eczema Relief',
      'subtitle': 'Skin Health',
      'icon': Icons.healing,
      'url':
          'https://www.moringaprojectthailand.com/en-us/blogs/news/moringa-oil-for-eczema-relief',
      'description':
          'Eczema can feel like a never-ending cycle. Discover how moringa oil can provide natural relief.',
      'imageUrl': 'assets/images/moringa_oil_eczema.webp',
    },
    {
      'title': 'Wellness Around the World: Global Rituals That Inspire Us',
      'subtitle': 'Global Wellness',
      'icon': Icons.public,
      'url':
          'https://www.moringaprojectthailand.com/en-us/blogs/news/wellness-around-the-world-global-rituals-that-inspire-us',
      'description':
          'Wellness is a language spoken through culture, tradition, and everyday ritual across the world.',
      'imageUrl': 'assets/images/global_rituals.webp',
    },
    {
      'title': 'Moringa Moments: Inside the Wellness Circle with Fah Chanettee',
      'subtitle': 'Skin Health',
      'icon': Icons.content_cut,
      'url':
          'https://www.moringaprojectthailand.com/blogs/news/moringa-moments-inside-the-wellness-circle-with-fah-chanettee',
      'description':
          'Hear from one of our Moringa community of practitioner,  Fah Chanettee— a physiotherapist whose journey has grown into something far beyond physical rehabilitation. ',
      'imageUrl': 'assets/images/moringa_moments.webp',
    },
    {
      'title': 'A Beginner\'s Guide to Moringa Project Products',
      'subtitle': 'Skincare Guide',
      'icon': Icons.spa,
      'url':
          'https://www.moringaprojectthailand.com/en-us/blogs/news/a-beginner-s-guide-to-moringa-project-products',
      'description':
          'New to Moringa Project? Explore our beginner\'s guide to natural skincare powered by moringa.',
      'imageUrl': 'assets/images/beginners_guide.webp',
    },
    {
      'title': 'The Mood-Lifting Benefits of Moringa',
      'subtitle': 'Body Care',
      'icon': Icons.self_improvement,
      'url':
          'https://www.moringaprojectthailand.com/blogs/news/the-mood-lifting-benefits-of-moringa',
      'description':
          'At Moringa Project, we talk a lot about natural skincare and building mindful rituals because what we really care about is how you feel, not just how you look.',
      'imageUrl': 'assets/images/mood_lifting.webp',
    },
  ];

  // Function to open articles in WebView within the app
  void _openBlogArticle(Map<String, dynamic> article) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => WebViewArticle(
              title: article['title'],
              url: article['url'],
              category: article['subtitle'],
            ),
      ),
    );
  }

  // function to launch YouTube video with multiple fallback URLs
  Future<void> _launchYouTubeVideo() async {
    final List<String> urls = [
      'https://www.youtube.com/watch?v=pWmcxgWQijA', // Full YouTube URL
      'https://youtu.be/pWmcxgWQijA', // Short YouTube URL
      'https://m.youtube.com/watch?v=pWmcxgWQijA', // Mobile YouTube URL
    ];

    bool launched = false;

    for (String urlString in urls) {
      try {
        final Uri url = Uri.parse(urlString);

        if (await canLaunchUrl(url)) {
          await launchUrl(url, mode: LaunchMode.externalApplication);
          launched = true;
          debugPrint('Successfully launched: $urlString');
          break;
        }
      } catch (e) {
        debugPrint('Failed to launch $urlString: $e');
        continue;
      }
    }

    // if none of the URLs worked, try opening in browser mode
    if (!launched) {
      try {
        final Uri fallbackUrl = Uri.parse(
          'https://www.youtube.com/watch?v=pWmcxgWQijA',
        );
        await launchUrl(fallbackUrl, mode: LaunchMode.inAppBrowserView);
        launched = true;
        debugPrint('Opened in browser view');
      } catch (e) {
        debugPrint('Browser fallback failed: $e');
      }
    }

    // show error message if nothing worked
    if (!launched && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Could not open video. Please check your internet connection.',
          ),
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

  // Helper method to build image widget for both asset and network images
  Widget _buildBlogImage(String imageUrl) {
    if (imageUrl.startsWith('assets/')) {
      // Asset image
      return Image.asset(
        imageUrl,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: const Color(0xFFE8E5DC),
            child: const Center(
              child: Icon(
                Icons.image_not_supported,
                color: Color(0xFF47734E),
                size: 40,
              ),
            ),
          );
        },
      );
    } else {
      // Network image
      return Image.network(
        imageUrl,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: const Color(0xFFE8E5DC),
            child: const Center(
              child: Icon(
                Icons.image_not_supported,
                color: Color(0xFF47734E),
                size: 40,
              ),
            ),
          );
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            color: const Color(0xFFE8E5DC),
            child: Center(
              child: CircularProgressIndicator(
                value:
                    loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                color: const Color(0xFF47734E),
              ),
            ),
          );
        },
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
            // video thumbnail section
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
                  // youTube thumbnail image
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://img.youtube.com/vi/pWmcxgWQijA/maxresdefault.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // dark overlay for better text visibility
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

                  // play button overlay
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

                  // bottom text overlay
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

                  // tap detector
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
            SizedBox(height: 420, child: _buildSwipeableCards()),

            // new horizontal widget section
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Our Best-Selling Must Haves',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF47734E),
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _placeholderWidgets.length,
                      itemBuilder: (context, index) {
                        final widget = _placeholderWidgets[index];
                        return Container(
                          width: 200,
                          margin: EdgeInsets.only(
                            right:
                                index < _placeholderWidgets.length - 1 ? 12 : 0,
                          ),
                          child: _buildPlaceholderWidget(widget),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Moringa Love Blog section
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color(0xFF47734E).withValues(alpha: 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Color(0xFF47734E),
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'Moringa Love Blog',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GlacialIndifference',
                          color: Color(0xFF47734E),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Stories, tips, and inspiration from our community',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF5C8A63),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 280,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _blogWidgets.length,
                      itemBuilder: (context, index) {
                        final blog = _blogWidgets[index];
                        return Container(
                          width: 250,
                          margin: EdgeInsets.only(
                            right: index < _blogWidgets.length - 1 ? 16 : 0,
                          ),
                          child: _buildMoringaLoveBlogWidget(blog),
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
              color:
                  _currentPage == index
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
                margin: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 40,
                ),
                height: 350,
                child: _buildMoringaCard(
                  _moringaCards[index],
                  index == _currentPage,
                ),
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFFAF7F0),
          borderRadius: BorderRadius.circular(20),
          border:
              isActive
                  ? Border.all(color: const Color(0xFF47734E), width: 2)
                  : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // image area
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFE8E5DC),
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(cardData['image']),
                  fit: BoxFit.cover,
                  onError: (exception, stackTrace) {},
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cardData['route']),
                  );
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
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            debugPrint('${widgetData['title']} tapped');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Image section
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    image: DecorationImage(
                      image: AssetImage(widgetData['url']),
                      fit: BoxFit.cover,
                      onError: (exception, stackTrace) {
                        // Handle image loading error
                        debugPrint(
                          'Failed to load image: ${widgetData['url']}',
                        );
                      },
                    ),
                  ),
                ),
              ),

              // Title section
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFAF7F0),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      widgetData['title'],
                      style: const TextStyle(
                        fontFamily: 'GlacialIndifference',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFF3A1A14),
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMoringaLoveBlogWidget(Map<String, dynamic> blogData) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFAF7F0),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFF47734E).withValues(alpha: 0.2),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => _openBlogArticle(blogData),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Blog image - now handles both asset and network images
              Container(
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  color: const Color(0xFFE8E5DC),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      // Image widget that handles both asset and network images
                      SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: _buildBlogImage(blogData['imageUrl']),
                      ),
                      // Gradient overlay
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withValues(alpha: 0.3),
                            ],
                          ),
                        ),
                      ),
                      // Category badge
                      Positioned(
                        top: 12,
                        right: 12,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF47734E),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            blogData['subtitle'],
                            style: const TextStyle(
                              color: Color(0xFFFAF7F0),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GlacialIndifference',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Icon and title
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(
                                0xFF47734E,
                              ).withValues(alpha: 0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              blogData['icon'],
                              size: 16,
                              color: const Color(0xFF47734E),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              blogData['title'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'GlacialIndifference',
                                color: Color(0xFF47734E),
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      // Description
                      Expanded(
                        child: Text(
                          blogData['description'],
                          style: const TextStyle(
                            fontSize: 13,
                            fontFamily: 'GlacialIndifference',
                            color: Color(0xFF3A1A14),
                            height: 1.4,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                      const SizedBox(height: 12),

                      // Read more indicator
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Read More',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'GlacialIndifference',
                              color: Color(0xFF5C8A63),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: const Color(
                                0xFF47734E,
                              ).withValues(alpha: 0.1),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_forward,
                              size: 12,
                              color: Color(0xFF47734E),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
