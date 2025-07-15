import 'package:flutter/material.dart';

class PractitionersPage extends StatefulWidget {
  const PractitionersPage({super.key});

  @override
  State<PractitionersPage> createState() => _PractitionersPageState();
}

class _PractitionersPageState extends State<PractitionersPage> {
  final List<Map<String, dynamic>> _practitioners = [
    {
      'name': 'Name',
      'title': 'Type',
      'specialties': ['Specialties'],
      'experience': 'Years of experience',
      'location': 'Bangkok',
      'description': 'Description.',
      'certifications': ['Certifications'],
      'languages': ['Languages'],
      'contact': 'Contact',
      'image': 'Image',
      'color': const Color(0xFF9f8170),
      'featured': true,
    },
    {
      'name': 'Name',
      'title': 'Type',
      'specialties': ['Specialties'],
      'experience': 'Years of experience',
      'location': 'Bangkok',
      'description': 'Description.',
      'certifications': ['Certifications'],
      'languages': ['Languages'],
      'contact': 'Contact',
      'image': 'Image',
      'color': const Color(0xFF9f8170),
      'featured': true,
    },
    {
      'name': 'Name',
      'title': 'Type',
      'specialties': ['Specialties'],
      'experience': 'Years of experience',
      'location': 'Bangkok',
      'description': 'Description.',
      'certifications': ['Certifications'],
      'languages': ['Languages'],
      'contact': 'Contact',
      'image': 'Image',
      'color': const Color(0xFF9f8170),
      'featured': true,
    },
    {
      'name': 'Name',
      'title': 'Type',
      'specialties': ['Specialties'],
      'experience': 'Years of experience',
      'location': 'Bangkok',
      'description': 'Description.',
      'certifications': ['Certifications'],
      'languages': ['Languages'],
      'contact': 'Contact',
      'image': 'Image',
      'color': const Color(0xFF9f8170),
      'featured': true,
    },
  ];

  final List<Map<String, dynamic>> _practitionerTypes = [
    {
      'type': 'Massage Therapists',
      'description': 'Skilled in traditional Thai massage, oil massage, and therapeutic bodywork',
      'icon': Icons.healing,
      'specialties': ['Traditional Thai Massage', 'Oil Massage', 'Reflexology', 'Deep Tissue'],
    },
    {
      'type': 'Wellness Coaches',
      'description': 'Guide you through holistic lifestyle changes and wellness practices',
      'icon': Icons.psychology,
      'specialties': ['Lifestyle Coaching', 'Stress Management', 'Habit Formation', 'Goal Setting'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Wellness Practitioners',
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
            // Hero section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF9f8170).withValues(alpha: 0.1),
                    const Color(0xFFFAF7F0),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF9f8170).withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.people_alt,
                      size: 60,
                      color: Color(0xFF9f8170),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Meet Our Wellness Practitioners',
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
                    'Connect with experienced practitioners who blend wellness and skincare together.',
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

            // All practitioners section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Our Practitioner Network',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF47734E),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...List.generate(_practitioners.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: _buildPractitionerCard(_practitioners[index]),
                    );
                  }),
                ],
              ),
            ),

            // Practitioner types section
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
                          Icons.diversity_3,
                          color: Color(0xFF47734E),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'Types of Practitioners',
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
                  ...List.generate(_practitionerTypes.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: _buildPractitionerTypeCard(_practitionerTypes[index]),
                    );
                  }),
                ],
              ),
            ),

            // How to connect section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'How to Connect',
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
                          'Getting Started',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'GlacialIndifference',
                            color: Color(0xFF47734E),
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '1. \n'
                          '2. \n'
                          '3. \n'
                          '4. \n'
                          '5. \n'
                          '6. ',
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

            // Call to action
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Practitioner booking feature coming soon!'),
                            backgroundColor: Color(0xFF47734E),
                          ),
                        );
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
                          Icon(Icons.connect_without_contact, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Connect with Practitioners',
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
                    const Text(
                      'Start your guided wellness journey today',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'GlacialIndifference',
                        color: Color(0xFF5C8A63),
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

  Widget _buildFeaturedPractitioner(Map<String, dynamic> practitioner) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFAF7F0),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: practitioner['color'].withValues(alpha: 0.5),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: practitioner['color'].withValues(alpha: 0.1),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: practitioner['color'].withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(practitioner['image']),
                    fit: BoxFit.cover,
                    onError: (exception, stackTrace) {
                      // Fallback if image not found
                    },
                  ),
                ),
                child: practitioner['image'].contains('assets/images/')
                    ? null
                    : Icon(
                        Icons.person,
                        size: 40,
                        color: practitioner['color'],
                      ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      practitioner['name'],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GlacialIndifference',
                        color: Color(0xFF47734E),
                      ),
                    ),
                    Text(
                      practitioner['title'],
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'GlacialIndifference',
                        color: practitioner['color'],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 14,
                          color: const Color(0xFF5C8A63),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          practitioner['location'],
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'GlacialIndifference',
                            color: Color(0xFF5C8A63),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Icon(
                          Icons.schedule,
                          size: 14,
                          color: const Color(0xFF5C8A63),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          practitioner['experience'],
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
          const SizedBox(height: 16),
          Text(
            practitioner['description'],
            style: const TextStyle(
              fontSize: 14,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF3A1A14),
              height: 1.4,
            ),
          ),
          const SizedBox(height: 12),
          _buildSpecialtiesWrap(practitioner['specialties'], practitioner['color']),
        ],
      ),
    );
  }

  Widget _buildPractitionerCard(Map<String, dynamic> practitioner) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFAF7F0),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFF47734E).withValues(alpha: 0.2),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: practitioner['color'].withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(practitioner['image']),
                fit: BoxFit.cover,
                onError: (exception, stackTrace) {
                  // Fallback if image not found
                },
              ),
            ),
            child: practitioner['image'].contains('assets/images/')
                ? null
                : Icon(
                    Icons.person,
                    size: 30,
                    color: practitioner['color'],
                  ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  practitioner['name'],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GlacialIndifference',
                    color: Color(0xFF47734E),
                  ),
                ),
                Text(
                  practitioner['title'],
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'GlacialIndifference',
                    color: practitioner['color'],
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 12,
                      color: const Color(0xFF5C8A63),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      practitioner['location'],
                      style: const TextStyle(
                        fontSize: 11,
                        fontFamily: 'GlacialIndifference',
                        color: Color(0xFF5C8A63),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: practitioner['color'].withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_forward,
              size: 16,
              color: practitioner['color'],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPractitionerTypeCard(Map<String, dynamic> type) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFAF7F0),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFF47734E).withValues(alpha: 0.2),
          width: 1,
        ),
      ),
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
                child: Icon(
                  type['icon'],
                  size: 20,
                  color: const Color(0xFF47734E),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  type['type'],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GlacialIndifference',
                    color: Color(0xFF47734E),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            type['description'],
            style: const TextStyle(
              fontSize: 14,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF3A1A14),
              height: 1.3,
            ),
          ),
          const SizedBox(height: 8),
          _buildSpecialtiesWrap(type['specialties'], const Color(0xFF47734E)),
        ],
      ),
    );
  }

  Widget _buildSpecialtiesWrap(List<String> specialties, Color color) {
    return Wrap(
      spacing: 6,
      runSpacing: 4,
      children: specialties.map((specialty) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            specialty,
            style: TextStyle(
              fontSize: 11,
              fontFamily: 'GlacialIndifference',
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      }).toList(),
    );
  }
}