import 'package:flutter/material.dart';
import 'spa_experience.dart';
import 'practitioners.dart';
import 'recommendations.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    final options = [
      {
        'name': 'Spa Experience',
        'description':
            'Discover authentic Thai wellness experiences and spa treatments',
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'page': const SpaExperiencePage(),
      },
      {
        'name': 'Practitioners',
        'description':
            'Meet our community of wellness experts and practitioners',
        'icon': Icons.people_alt,
        'color': const Color(0xFF9f8170),
        'page': const PractitionersPage(),
      },
      {
        'name': 'Our Recommendations',
        'description': 'Moringa wellness tips and lifestyle recommendations',
        'icon': Icons.recommend,
        'color': const Color(0xFFAF4C26),
        'page': const RecommendationsPage(),
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Moringa Project: Guide to Wellness',
          style: TextStyle(
            fontFamily: 'GlacialIndifference',
            color: Color(0xFFFAF7F0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              Container(
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
                        ),
                        const SizedBox(width: 16),
                        const Expanded(
                          child: Text(
                            'Your Wellness Journey in Thailand Starts Here',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GlacialIndifference',
                              color: Color(0xFF47734E),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              //
              const Text(
                'Wellness Information Hubs',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GlacialIndifference',
                  color: Color(0xFF47734E),
                ),
              ),

              const SizedBox(height: 16),
              
              ...List.generate(options.length, (index) {
                final option = options[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: _buildInformationHubCard(context, option),
                );
              }),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInformationHubCard(
    BuildContext context,
    Map<String, dynamic> option,
  ) {
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => option['page']),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                // icon section
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: option['color'].withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(option['icon'], size: 32, color: option['color']),
                ),

                const SizedBox(width: 20),

                // content section
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        option['name'],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GlacialIndifference',
                          color: Color(0xFF47734E),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        option['description'],
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'GlacialIndifference',
                          color: Color(0xFF3A1A14),
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),

                // Arrow icon
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF47734E).withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Color(0xFF47734E),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
