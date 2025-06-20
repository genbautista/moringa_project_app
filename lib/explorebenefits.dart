import 'package:flutter/material.dart';

class ExploreBenefits extends StatefulWidget {
  const ExploreBenefits({super.key});

  @override
  State<ExploreBenefits> createState() => _ExploreBenefitsState();
}

class _ExploreBenefitsState extends State<ExploreBenefits> {
  final List<Map<String, dynamic>> _benefits = [
    {
      'title': 'Rich in Antioxidants',
      'description': 'words',
      'icon': Icons.shield,
      'color': Color(0xFF4CAF50),
    },
    {
      'title': 'Anti-Inflammatory',
      'description': 'words',
      'icon': Icons.healing,
      'color': Color(0xFF2196F3),
    },
    {
      'title': 'Nutrient Dense',
      'description': 'words',
      'icon': Icons.energy_savings_leaf,
      'color': Color(0xFF8BC34A),
    },
    {
      'title': 'Skin Nourishment',
      'description': 'words',
      'icon': Icons.auto_awesome,
      'color': Color(0xFFFF9800),
    },
    {
      'title': 'Natural Moisturizer',
      'description': 'words',
      'icon': Icons.water_drop,
      'color': Color(0xFF00BCD4),
    },
    {
      'title': 'Anti-Aging Properties',
      'description': 'words',
      'icon': Icons.refresh,
      'color': Color(0xFF9C27B0),
    },
  ];

  final List<Map<String, dynamic>> _nutritionalFacts = [
    {
      'nutrient': 'Protein',
      'amount': '25g per 100g',
      'benefit': 'words',
      'icon': Icons.fitness_center,
    },
    {
      'nutrient': 'Vitamin C',
      'amount': '7x more than oranges',
      'benefit': 'words',
      'icon': Icons.local_pharmacy,
    },
    {
      'nutrient': 'Calcium',
      'amount': '4x more than milk',
      'benefit': 'words',
      'icon': Icons.accessibility_new,
    },
    {
      'nutrient': 'Iron',
      'amount': '3x more than spinach',
      'benefit': 'words',
      'icon': Icons.bolt,
    },
    {
      'nutrient': 'Vitamin A',
      'amount': '4x more than carrots',
      'benefit': 'words',
      'icon': Icons.visibility,
    },
    {
      'nutrient': 'Potassium',
      'amount': '3x more than bananas',
      'benefit': 'words',
      'icon': Icons.favorite,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Moringa Benefits',
          style: TextStyle(
            fontFamily: 'GlacialIndifference',
            color: Color(0xFFFAF7F0),
          ),
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
            // hero section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF47734E).withValues(alpha: 0.1),
                    const Color(0xFFFAF7F0),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF47734E).withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.local_florist,
                      size: 60,
                      color: Color(0xFF47734E),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'The Miracle Tree',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF47734E),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Discover why Moringa is called the miracle tree and how it can transform your wellness routine',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF5C8A63),
                    ),
                  ),
                ],
              ),
            ),

            // benefits grid section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Key Benefits',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF47734E),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 0.85,
                    ),
                    itemCount: _benefits.length,
                    itemBuilder: (context, index) {
                      return _buildBenefitCard(_benefits[index]);
                    },
                  ),
                ],
              ),
            ),

            // nutritional facts section
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFE8E5DC),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xFF47734E).withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFF47734E).withValues(alpha: 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.science,
                          color: Color(0xFF47734E),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'Nutritional Powerhouse',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'GlacialIndifference',
                            color: Color(0xFF47734E),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ...List.generate(_nutritionalFacts.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: _buildNutritionalFact(_nutritionalFacts[index]),
                    );
                  }),
                ],
              ),
            ),

            // scientific research section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Scientific Research',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF47734E),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFAF7F0),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF47734E).withValues(alpha: 0.3),
                        width: 1,
                      ),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Research Backed Benefits',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'GlacialIndifference',
                            color: Color(0xFF47734E),
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '• Over 90 bioactive compounds identified\n'
                          '• Proven antioxidant and anti-inflammatory properties\n'
                          '• Supports healthy blood sugar levels\n'
                          '• May help lower cholesterol\n'
                          '• Promotes wound healing\n'
                          '• Supports liver and heart health',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'GlacialIndifference',
                            color: Color(0xFF3A1A14),
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // call to action
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    ElevatedButton(
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
                    const SizedBox(height: 16),
                    Text(
                      'Experience the power of nature\'s miracle tree',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'GlacialIndifference',
                        color: const Color(0xFF5C8A63),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildBenefitCard(Map<String, dynamic> benefit) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFAF7F0),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: benefit['color'].withValues(alpha: 0.3),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: benefit['color'].withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              benefit['icon'],
              size: 32,
              color: benefit['color'],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            benefit['title'],
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF47734E),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            benefit['description'],
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF3A1A14),
              height: 1.3,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildNutritionalFact(Map<String, dynamic> fact) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFF47734E).withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            fact['icon'],
            size: 20,
            color: const Color(0xFF47734E),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    fact['nutrient'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF47734E),
                    ),
                  ),
                  Text(
                    fact['amount'],
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF5C8A63),
                    ),
                  ),
                ],
              ),
              Text(
                fact['benefit'],
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'GlacialIndifference',
                  color: Color(0xFF3A1A14),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}