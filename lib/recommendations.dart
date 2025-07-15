import 'package:flutter/material.dart';

class RecommendationsPage extends StatefulWidget {
  const RecommendationsPage({super.key});

  @override
  State<RecommendationsPage> createState() => _RecommendationsPageState();
}

class _RecommendationsPageState extends State<RecommendationsPage> {
  String selectedCategory = 'All';

  final List<String> categories = [
    'All',
    'Daily Routine',
    'Nutrition',
    'Exercise',
    'Mental Health',
    'Skincare',
    'Travel',
  ];

  final List<Map<String, dynamic>> _recommendations = [
    // daily routine
    {
      'title': 'EX: Morning Moringa Ritual',
      'category': 'Daily Routine',
      'description': 'Start your day with intention and nourishment',
      'icon': Icons.wb_sunny,
      'color': const Color(0xFFAF4C26),
      'difficulty': 'Easy',
      'timeRequired': '10 minutes',
      'steps': [
        'Drink a glass of warm water with lemon',
        'Apply moringa oil to face and hands',
        'Take 5 deep breaths and set daily intention',
        'Enjoy moringa tea or add powder to smoothie',
      ],
      'benefits': ['Improved hydration', 'Glowing skin', 'Mental clarity', 'Nutrient boost'],
    },
    {
      'title': 'Title',
      'category': 'Category',
      'description': 'Description',
      'icon': Icons.bedtime,
      'color': const Color(0xFFAF4C26),
      'difficulty': 'Difficulty Level',
      'timeRequired': 'Time/Duration',
      'steps': [
        'Steps',
      ],
      'benefits': ['Benefits'],
    },

    // Nutrition
    {
      'title': 'Title',
      'category': 'Category',
      'description': 'Description',
      'icon': Icons.bedtime,
      'color': const Color(0xFFAF4C26),
      'difficulty': 'Difficulty Level',
      'timeRequired': 'Time/Duration',
      'steps': [
        'Steps',
      ],
      'benefits': ['Benefits'],
    },
    {
      'title': 'Title',
      'category': 'Category',
      'description': 'Description',
      'icon': Icons.bedtime,
      'color': const Color(0xFFAF4C26),
      'difficulty': 'Difficulty Level',
      'timeRequired': 'Time/Duration',
      'steps': [
        'Steps',
      ],
      'benefits': ['Benefits'],
    },

    // Exercise
    {
      'title': 'Title',
      'category': 'Category',
      'description': 'Description',
      'icon': Icons.bedtime,
      'color': const Color(0xFFAF4C26),
      'difficulty': 'Difficulty Level',
      'timeRequired': 'Time/Duration',
      'steps': [
        'Steps',
      ],
      'benefits': ['Benefits'],
    },
    {
      'title': 'Title',
      'category': 'Category',
      'description': 'Description',
      'icon': Icons.bedtime,
      'color': const Color(0xFFAF4C26),
      'difficulty': 'Difficulty Level',
      'timeRequired': 'Time/Duration',
      'steps': [
        'Steps',
      ],
      'benefits': ['Benefits'],
    },

    // Mental Health
    {
     'title': 'Title',
      'category': 'Category',
      'description': 'Description',
      'icon': Icons.bedtime,
      'color': const Color(0xFFAF4C26),
      'difficulty': 'Difficulty Level',
      'timeRequired': 'Time/Duration',
      'steps': [
        'Steps',
      ],
      'benefits': ['Benefits'],
    },
    {
      'title': 'Title',
      'category': 'Category',
      'description': 'Description',
      'icon': Icons.bedtime,
      'color': const Color(0xFFAF4C26),
      'difficulty': 'Difficulty Level',
      'timeRequired': 'Time/Duration',
      'steps': [
        'Steps',
      ],
      'benefits': ['Benefits'],
    },

    // Skincare
    {
      'title': 'Title',
      'category': 'Category',
      'description': 'Description',
      'icon': Icons.bedtime,
      'color': const Color(0xFFAF4C26),
      'difficulty': 'Difficulty Level',
      'timeRequired': 'Time/Duration',
      'steps': [
        'Steps',
      ],
      'benefits': ['Benefits'],
    },

    // Travel
    {
      'title': 'Title',
      'category': 'Category',
      'description': 'Description',
      'icon': Icons.bedtime,
      'color': const Color(0xFFAF4C26),
      'difficulty': 'Difficulty Level',
      'timeRequired': 'Time/Duration',
      'steps': [
        'Steps',
      ],
      'benefits': ['Benefits'],
    },
  ];

  List<Map<String, dynamic>> get filteredRecommendations {
    if (selectedCategory == 'All') {
      return _recommendations;
    }
    return _recommendations.where((rec) => rec['category'] == selectedCategory).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Our Recommendations',
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
      body: Column(
        children: [
          // Hero section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFFAF4C26).withValues(alpha: 0.1),
                  const Color(0xFFFAF7F0),
                ],
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFAF4C26).withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.recommend,
                    size: 60,
                    color: Color(0xFFAF4C26),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Moringa Wellness Recommendations',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GlacialIndifference',
                    color: Color(0xFF47734E),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Expert tips and practices for wellness in Thailand',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'GlacialIndifference',
                    color: Color(0xFF5C8A63),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),

          // Category filter
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${filteredRecommendations.length} Recommendations',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GlacialIndifference',
                    color: Color(0xFF47734E),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      final isSelected = selectedCategory == category;
                      
                      return Container(
                        margin: EdgeInsets.only(right: index < categories.length - 1 ? 12 : 0),
                        child: FilterChip(
                          label: Text(
                            category,
                            style: TextStyle(
                              fontFamily: 'GlacialIndifference',
                              color: isSelected ? const Color(0xFFFAF7F0) : const Color(0xFF47734E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          selected: isSelected,
                          onSelected: (selected) {
                            setState(() {
                              selectedCategory = category;
                            });
                          },
                          backgroundColor: const Color(0xFFE8E5DC),
                          selectedColor: const Color(0xFF47734E),
                          checkmarkColor: const Color(0xFFFAF7F0),
                          side: BorderSide(
                            color: isSelected 
                              ? const Color(0xFF47734E) 
                              : const Color(0xFF47734E).withValues(alpha: 0.3),
                            width: 1,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // Recommendations list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: filteredRecommendations.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: _buildRecommendationCard(filteredRecommendations[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard(Map<String, dynamic> recommendation) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFAF7F0),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: recommendation['color'].withValues(alpha: 0.3),
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            _showRecommendationDetails(recommendation);
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: recommendation['color'].withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        recommendation['icon'],
                        size: 24,
                        color: recommendation['color'],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            recommendation['title'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GlacialIndifference',
                              color: Color(0xFF47734E),
                            ),
                          ),
                          Text(
                            recommendation['category'],
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'GlacialIndifference',
                              color: recommendation['color'],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: recommendation['color'].withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        recommendation['difficulty'],
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'GlacialIndifference',
                          color: recommendation['color'],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                // Description
                Text(
                  recommendation['description'],
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'GlacialIndifference',
                    color: Color(0xFF3A1A14),
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 12),

                // Time and benefits preview
                Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      size: 16,
                      color: const Color(0xFF5C8A63),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      recommendation['timeRequired'],
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'GlacialIndifference',
                        color: Color(0xFF5C8A63),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Icon(
                      Icons.check_circle_outline,
                      size: 16,
                      color: recommendation['color'],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '${recommendation['benefits'].length} Benefits',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'GlacialIndifference',
                        color: recommendation['color'],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                // View details button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Tap to view full details',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'GlacialIndifference',
                        color: Color(0xFF5C8A63),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: recommendation['color'].withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 16,
                        color: recommendation['color'],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showRecommendationDetails(Map<String, dynamic> recommendation) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.8,
        decoration: const BoxDecoration(
          color: Color(0xFFFAF7F0),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            // Handle
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              width: 50,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xFF5C8A63),
                borderRadius: BorderRadius.circular(2),
              ),
            ),

            // Header
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: recommendation['color'].withValues(alpha: 0.1),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: recommendation['color'].withValues(alpha: 0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      recommendation['icon'],
                      size: 32,
                      color: recommendation['color'],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recommendation['title'],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'GlacialIndifference',
                            color: Color(0xFF47734E),
                          ),
                        ),
                        Text(
                          recommendation['description'],
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'GlacialIndifference',
                            color: Color(0xFF3A1A14),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: recommendation['color'].withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                recommendation['difficulty'],
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'GlacialIndifference',
                                  color: recommendation['color'],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              recommendation['timeRequired'],
                              style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'GlacialIndifference',
                                color: Color(0xFF5C8A63),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Content
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Steps
                    const Text(
                      'Steps to Follow',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GlacialIndifference',
                        color: Color(0xFF47734E),
                      ),
                    ),
                    const SizedBox(height: 12),
                    ...List.generate(recommendation['steps'].length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: recommendation['color'],
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '${index + 1}',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFAF7F0),
                                    fontFamily: 'GlacialIndifference',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                recommendation['steps'][index],
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
                      );
                    }),

                    const SizedBox(height: 24),

                    // Benefits
                    const Text(
                      'Benefits',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GlacialIndifference',
                        color: Color(0xFF47734E),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: (recommendation['benefits'] as List<String>).map((benefit) {
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: recommendation['color'].withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: recommendation['color'].withValues(alpha: 0.3),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.check_circle,
                                size: 16,
                                color: recommendation['color'],
                              ),
                              const SizedBox(width: 6),
                              Text(
                                benefit,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'GlacialIndifference',
                                  color: recommendation['color'],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),

                    const SizedBox(height: 32),

                    // Close button
                    Center(
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: recommendation['color'],
                          foregroundColor: const Color(0xFFFAF7F0),
                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Text(
                          'Got it!',
                          style: TextStyle(
                            fontFamily: 'GlacialIndifference',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
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