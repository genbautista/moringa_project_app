import 'package:flutter/material.dart';

class BlogArticleScreen extends StatelessWidget {
  final Map<String, dynamic> article;

  const BlogArticleScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: Text(
          article['title'],
          style: const TextStyle(
            fontFamily: 'GlacialIndifference',
            color: Color(0xFFFAF7F0),
            fontSize: 18,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFFFAF7F0)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // hero image
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFE8E5DC),
                image: DecorationImage(
                  image: AssetImage(article['image']),
                  fit: BoxFit.cover,
                  onError: (exception, stackTrace) {
                    // fallback if the image doesn't exist
                  },
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withValues(alpha: 0.6),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF47734E),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          article['category'],
                          style: const TextStyle(
                            color: Color(0xFFFAF7F0),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'GlacialIndifference',
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        article['title'],
                        style: const TextStyle(
                          color: Color(0xFFFAF7F0),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GlacialIndifference',
                          shadows: [
                            Shadow(
                              blurRadius: 4,
                              color: Colors.black26,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            // article content
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // author and meta info
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xFF47734E),
                        child: Icon(
                          Icons.person,
                          color: Color(0xFFFAF7F0),
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              article['author'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'GlacialIndifference',
                                color: Color(0xFF47734E),
                              ),
                            ),
                            Text(
                              article['readTime'],
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: 'GlacialIndifference',
                                color: Color(0xFF5C8A63),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // share functionality
                          debugPrint('Share article: ${article['title']}');
                        },
                        icon: const Icon(
                          Icons.share,
                          color: Color(0xFF47734E),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // article excerpt
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8E5DC),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF47734E).withValues(alpha: 0.2),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      article['excerpt'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'GlacialIndifference',
                        color: Color(0xFF3A1A14),
                        height: 1.5,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // article content (this would be dynamic based on the article)
                  _buildArticleContent(article['title']),
                  
                  const SizedBox(height: 32),
                  
                  // related articles or tags
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFAF7F0),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF47734E).withValues(alpha: 0.3),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Key Takeaways',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'GlacialIndifference',
                            color: Color(0xFF47734E),
                          ),
                        ),
                        const SizedBox(height: 12),
                        _buildKeyTakeaways(article['title']),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // call to action
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF47734E),
                        foregroundColor: const Color(0xFFFAF7F0),
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.shopping_bag, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Shop Moringa Products',
                            style: TextStyle(
                              fontFamily: 'GlacialIndifference',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildArticleContent(String title) {
    // this would normally be dynamic content from a database or CMS
    // for now, I'll provide sample content based on the title
    if (title.contains('Moringa Benefits')) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'The Power of Moringa',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF47734E),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Moringa oleifera, often called the "miracle tree," is one of the most nutrient-dense plants on Earth. Native to the foothills of the Himalayas, this incredible tree has been used for centuries in traditional medicine across Asia and Africa.',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF3A1A14),
              height: 1.6,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Rich in Nutrients',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF47734E),
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Moringa leaves contain more vitamin C than oranges, more calcium than milk, more iron than spinach, and more potassium than bananas. This nutritional powerhouse also provides all essential amino acids, making it a complete protein source.',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF3A1A14),
              height: 1.6,
            ),
          ),
        ],
      );
    } else if (title.contains('Skincare')) {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Building Your Natural Skincare Routine',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF47734E),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Creating an effective natural skincare routine doesn\'t have to be complicated. With the right ingredients and consistent application, you can achieve healthy, glowing skin naturally.',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF3A1A14),
              height: 1.6,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Morning Routine',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF47734E),
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Start your day with gentle cleansing, followed by our Moringa Facial Oil to nourish and protect your skin. The antioxidants in moringa help shield your skin from environmental damage throughout the day.',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF3A1A14),
              height: 1.6,
            ),
          ),
        ],
      );
    } else {
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome to Our Blog',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF47734E),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Thank you for reading our latest article. We\'re passionate about sharing knowledge about natural wellness, sustainable skincare, and the incredible benefits of moringa.',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF3A1A14),
              height: 1.6,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Stay tuned for more insights, tips, and stories from our journey in natural wellness and sustainable beauty.',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF3A1A14),
              height: 1.6,
            ),
          ),
        ],
      );
    }
  }

  Widget _buildKeyTakeaways(String title) {
    List<String> takeaways;
    
    if (title.contains('Moringa Benefits')) {
      takeaways = [
        'Moringa is one of the most nutrient-dense plants on Earth',
        'Contains more vitamin C than oranges and more calcium than milk',
        'Rich in antioxidants and anti-inflammatory compounds',
        'Provides all essential amino acids for complete nutrition',
      ];
    } else if (title.contains('Skincare')) {
      takeaways = [
        'Natural skincare routines can be simple and effective',
        'Consistency is key to seeing results',
        'Moringa oil provides excellent antioxidant protection',
        'Start with gentle, natural ingredients',
      ];
    } else {
      takeaways = [
        'Natural wellness is a journey, not a destination',
        'Quality ingredients make a difference',
        'Sustainability matters in skincare choices',
        'Education empowers better wellness decisions',
      ];
    }

    return Column(
      children: takeaways.map((takeaway) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 6),
              width: 6,
              height: 6,
              decoration: const BoxDecoration(
                color: Color(0xFF47734E),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                takeaway,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'GlacialIndifference',
                  color: Color(0xFF3A1A14),
                  height: 1.4,
                ),
              ),
            ),
          ],
        ),
      )).toList(),
    );
  }
}