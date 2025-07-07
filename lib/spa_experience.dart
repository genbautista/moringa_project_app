import 'package:flutter/material.dart';

class SpaExperiencePage extends StatefulWidget {
  const SpaExperiencePage({super.key});

  @override
  State<SpaExperiencePage> createState() => _SpaExperiencePageState();
}

class _SpaExperiencePageState extends State<SpaExperiencePage> {
  final List<Map<String, dynamic>> _spaLocations = [
    {
      'title': 'Mandarin Oriental Bangkok',
      'location': ['48 Oriental Ave, Khwaeng Khlong Ton Sai, Bang Rak, Bangkok 10500'],
      'icon': Icons.self_improvement,
      'color': const Color(0xFF8BC34A),
    },
    {
      'title': 'The Sukhothai Bangkok',
      'location': [' 13/3 S Sathon Rd, Thung Maha Mek, Sathon, Bangkok 10120'],
      'icon': Icons.spa,
      'color': const Color(0xFF2196F3),
    },
    {
      'title': 'So Bangkok',
      'location': ['2 North, Sathorn, S Sathon Rd, Bang Rak, Bangkok 10500'],
      'icon': Icons.opacity,
      'color': const Color(0xFF4CAF50),
    },
    {
      'title': 'Mandara Spa Bangkok',
      'location': ['2 Charoen Krung 30, Bang Rak, Bangkok 10500'],
      'icon': Icons.directions_walk,
      'color': const Color(0xFFFF9800),
    },
    {
      'title': 'Anantara Riverside',
      'location': ['257/1-3 Charoennakorn Road Samrae Thon Buri, Bangkok 10600'],
      'icon': Icons.self_improvement,
      'color': const Color(0xFF8BC34A),
    },
    {
      'title': 'Anantara Bophut Samui',
      'location': ['99/9 Bophut Bay Samui Island, Ko Samui District, Surat Thani 84320'],
      'icon': Icons.spa,
      'color': const Color(0xFF2196F3),
    },
    {
      'title': 'Four Seasons Samui',
      'location': ['219 Moo 5 Surat Thani Angthong, 84140'],
      'icon':  Icons.opacity,
      'color': const Color(0xFF4CAF50),
    },
    {
      'title': 'Ritz Carlton Samui',
      'location': ['9, 123 Tambon, Bo Put, Amphoe Ko Samui, Surat Thani 84320'],
      'icon': Icons.directions_walk,
      'color': const Color(0xFFFF9800),
    },
    {
      'title': 'Absolute Sanctuary Samui',
      'location': ['88, Bo Put, Ko Samui District, Surat Thani 84320'],
      'icon': Icons.self_improvement,
      'color': const Color(0xFF8BC34A),
    },
    {
      'title': 'Cielo Samui',
      'location': ['180/5 Moo 1 Bophut, Bo Put, Ko Samui District, Surat Thani 84320'],
      'icon': Icons.spa,
      'color': const Color(0xFF2196F3),
    },
    {
      'title': 'The Pavilions Phuket',
      'location': ['1 1, Choeng Thale, Thalang District, Phuket 83110'],
      'icon':  Icons.opacity,
      'color': const Color(0xFF4CAF50),
    },
    {
      'title': 'Rosewood Phuket',
      'location': ['30-33, 88/28 Muen-Ngern Rd, Kathu District, 83150'],
      'icon': Icons.directions_walk,
      'color': const Color(0xFFFF9800),
    },
    {
      'title': 'The Surin Phuket',
      'location': ['118 Moo 3, Choengtalay, Thalang, Phuket 83110 Thailand'],
      'icon': Icons.self_improvement,
      'color': const Color(0xFF8BC34A),
    },
    {
      'title': 'The Barai Hua Hin',
      'location': ['29 91 Nong Kae, Hua Hin District, Prachuap Khiri Khan 77110'],
      'icon': Icons.spa,
      'color': const Color(0xFF2196F3),
    },
    {
      'title': 'Raya Heritage, Chiang Mai',
      'location': ['157, Don Kaeo, Mae Rim District, Chiang Mai 50180'],
      'icon': Icons.opacity,
      'color': const Color(0xFF4CAF50),
    },
  ];

  final List<Map<String, dynamic>> _spaProcess = [
    {
      'title': 'Curated Moringa Wellness Essentials',
      'tips': [
        'Enhance your treatment oﬀerings with our range of carefully crafted, Moringa-infused essentials in professional-sized bottles:',
        'Moringa Cleansing Soaps – Purifying, nutrient-rich, and gentle on the skin',
        'Moringa Foot & Body Soak – A deeply restorative, mineral-rich blend of salt, epsom salt and essential oils',
        'Moringa Seed Scrub – Exfoliating and antioxidant-packed',
        'Moringa Clay Mask – Detoxifying, mineral-dense, and skin-renewing',
        'Moringa Body & Face Massage Oils – Luxuriously lightweight and deeply nourishing',
      ],
      'icon': Icons.schedule,
    },
    {
      'title': 'Custom Moringa Treatments\n& Training',
      'tips': [
        'We work with leading wellness practitioners to develop signature treatments, bespoke wellness journeys, and custom product formulations tailored to your needs.',
        'Exclusive, co-created wellness rituals that set your spa or retreat apart',
        'Training and consultation (From pre-planning to planning to practice) to ensure a seamless guest experience',
        'Deep integration of Moringa’s wellness benefits, adding a unique element to your existing treatments',
      ],
      'icon': Icons.healing,
    },
    {
      'title': 'Let’s Build Something Lasting',
      'tips': [
        'For those ready to fully embrace the Moringa philosophy, we oﬀer select Moringa Project Spa partnerships—an opportunity to bring an exclusive, Moringa-infused wellness concept to your space.',
        'The best collaborations are about building something real and rooted. If you share our passion for intentional wellness, let’s talk.',
        'Reach out: hello@moringaprojectthailand.com',
      ],
      'icon': Icons.water_drop,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Spa Experience',
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
                    // ignore: deprecated_member_use
                    const Color(0xFF8BC34A).withOpacity(0.1),
                    const Color(0xFFFAF7F0),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: const Color(0xFF8BC34A).withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.spa,
                      size: 60,
                      color: Color(0xFF8BC34A),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Moringa Spa Experience',
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
                    'We partner with those who share our passion for crafting intentional, immersive experiences—the kind that understands that wellness isn’t just about what we use—it’s also about how we experience it.',
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

            // spa locations
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Moringa is found in these\nThailand Spa Locations',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF47734E),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...List.generate(_spaLocations.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: _buildSpaLocationsCard(_spaLocations[index]),
                    );
                  }),
                ],
              ),
            ),

            // spa process 
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFE8E5DC),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  // ignore: deprecated_member_use
                  color: const Color(0xFF47734E).withOpacity(0.3),
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
                          // ignore: deprecated_member_use
                          color: const Color(0xFF47734E).withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.info_outline,
                          color: Color(0xFF47734E),
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Text(
                          'How We Can Work Together',
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
                  ...List.generate(_spaProcess.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: _buildProcessSection(_spaProcess[index]),
                    );
                  }),
                ],
              ),
            ),

            // spa process
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Moringa Spa Experience',
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
                        // ignore: deprecated_member_use
                        color: const Color(0xFF47734E).withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Our Wellness Spa Approach',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'GlacialIndifference',
                            color: Color(0xFF47734E),
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Experience the power of Moringa brought to life by the healing touch of expert therapists.\n'
                          'You can find us on treatment menus of award-winning spas across Thailand and the Maldives, where your skin is nourished, senses stilled, and everything unnecessary falls away.\n'
                          '\nOur treatments are crafted to work with the body, each one infused with cold-pressed Moringa Oil, which is rich in the nutrients your skin needs from glow-giving facials to deep full body therapists.\n'
                          '\nYou need a skincare that starts at the root slow, generous, and deeply restorative, whether it’s the Miracle Moringa Body Massage or a Rejuvenating Moringa Facial.'
                          'We partner with spas who believe in the real deal. Clean and plant-based care that honours the land it comes from and the people who reside there.\n'
                          '\nMandarin Oriential, The Sukhothai, Four Seasons, Anantara, Ritz-Carlton, and much more. Each spot trusted because when it comes to self-care, we agree that nature still does it best.',
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

            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Spa booking feature coming soon!'),
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
                          Icon(Icons.calendar_month, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Book a Moringa Project\nSpa Treatment',
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
                      'Discover Moringa Thai wellness experiences',
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
          ],
        ),
      ),
    );
  }

  Widget _buildSpaLocationsCard(Map<String, dynamic> location) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFAF7F0),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          // ignore: deprecated_member_use
          color: (location['color'] as Color).withOpacity(0.3),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: (location['color'] as Color).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  location['icon'],
                  size: 24,
                  color: location['color'],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      location['title'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GlacialIndifference',
                        color: Color(0xFF47734E),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'Location:',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'GlacialIndifference',
              color: Color(0xFF47734E),
            ),
          ),
          const SizedBox(height: 4),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            children: (location['location'] as List<String>).map((benefit) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: (location['color'] as Color).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  benefit,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'GlacialIndifference',
                    color: location['color'],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildProcessSection(Map<String, dynamic> process) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              process['icon'],
              size: 20,
              color: const Color(0xFF47734E),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                process['title'],
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
        ...List.generate((process['tips'] as List<String>).length, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 28, bottom: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '• ',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'GlacialIndifference',
                    color: Color(0xFF47734E),
                  ),
                ),
                Expanded(
                  child: Text(
                    process['tips'][index],
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF3A1A14),
                      height: 1.3,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }
}