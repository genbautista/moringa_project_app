import 'package:flutter/material.dart';

class SpaExperiencePage extends StatefulWidget {
  const SpaExperiencePage({super.key});

  @override
  State<SpaExperiencePage> createState() => _SpaExperiencePageState();
}

class _SpaExperiencePageState extends State<SpaExperiencePage> {
  final Map<String, List<Map<String, dynamic>>> _spaLocationsByRegion = {
    'Bangkok': [
      {
        'title': 'Anantara Bangkok Siam',
        'location': ['155 Ratchadamri Road, Lumpini, Pathumwan, Bangkok 10330'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Anantara Bangkok Riverside',
        'location': ['257/1-3 Charoennakorn Road, Samrae, Thon Buri, Bangkok 10600'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Capella Bangkok',
        'location': ['300/1 Charoenkrung Road, Yan Nawa, Sathon, Bangkok 10120'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Mandarin Oriental Bangkok',
        'location': ['48 Oriental Ave, Khwaeng Khlong Ton Sai, Bang Rak, Bangkok 10500'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Mandara Spa - Royal Orchid Sheraton Hotel',
        'location': ['2 Charoen Krung 30, Si Phraya, Bang Rak, Bangkok 10500'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Rosewood Bangkok',
        'location': ['1041/38 Ploenchit Road, Lumpini, Pathumwan, Bangkok 10330'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'So Bangkok',
        'location': ['2 North Sathorn Road, Silom, Bang Rak, Bangkok 10500'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': '137 Pillars',
        'location': ['2/2 Thanon Nawarat, Wat Ket, Mueang Chiang Mai, Chiang Mai 50000'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
    ],
    'Chiang Mai': [
      {
        'title': 'Anantara Chiang Mai',
        'location': ['123-123/1 Charoen Prathet Road, Chang Khlan, Mueang Chiang Mai 50100'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Four Seasons Golden Triangle',
        'location': ['915 Moo 1, Chiang Saen, Chiang Rai 57150'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Raya Heritage',
        'location': ['157 Don Kaeo, Mae Rim District, Chiang Mai 50180'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
    ],
    'Hua Hin': [
      {
        'title': 'Chiva Som',
        'location': ['73/4 Petchkasem Road, Hua Hin, Prachuap Khiri Khan 77110'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'The Barai, Hyatt',
        'location': ['91 Hua Hin-Khao Takiab Road, Nong Kae, Hua Hin 77110'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
    ],
    'Phuket Area': [
      {
        'title': 'Anantara Layan Phuket',
        'location': ['Layan Beach, Choeng Thale, Thalang District, Phuket 83110'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Anantara Koh Yao Yai',
        'location': ['56 Moo 7, Ko Yao Yai, Ko Yao District, Phang Nga 82160'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Baba Ecolodge',
        'location': ['Cape Panwa, Phuket 83000'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Como Point Yamu Phuket',
        'location': ['225 Moo 7, Pa Khlok, Thalang District, Phuket 83110'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'JW Marriot Phuket',
        'location': ['231 Moo 3, Mai Khao Beach, Thalang, Phuket 83110'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'JW Marriot, Khao Lak',
        'location': ['41/12 Moo 3, Khuk Khak Beach, Takua Pa, Phang Nga 82190'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Rosewood Phuket',
        'location': ['88/28 Muen-Ngern Road, Kathu District, Phuket 83150'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Paresa Resort',
        'location': ['49 Moo 6, Layi-Nakalay Road, Kamala, Kathu, Phuket 83150'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'The Pavilions',
        'location': ['31/1 Moo 6, Layi-Nakalay Road, Kamala Beach, Phuket 83150'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'The Surin',
        'location': ['118 Moo 3, Choeng Thale, Thalang, Phuket 83110'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Vanabelle',
        'location': ['21/4 Viset Road, Rawai, Mueang Phuket, Phuket 83130'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Zeavola, Phi Phi',
        'location': ['11 Moo 8, Laem Tong, Phi Phi Island, Krabi 81000'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
    ],
    'Samui Area': [
      {
        'title': 'Absolute Sanctuary',
        'location': ['88 Moo 5, Bophut, Ko Samui District, Surat Thani 84320'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Cielo Samui Boutique',
        'location': ['180/5 Moo 1, Bophut, Ko Samui District, Surat Thani 84320'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Four Seasons Samui',
        'location': ['219 Moo 5, Angthong, Ko Samui District, Surat Thani 84140'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Kamalaya Wellness Sanctuary',
        'location': ['102/9 Moo 3, Laem Set Road, Na Mueang, Ko Samui 84140'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Ritz Carlton Samui',
        'location': ['9/123 Moo 5, Bophut, Ko Samui District, Surat Thani 84320'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Santiburi',
        'location': ['12/12 Moo 1, Mae Nam, Ko Samui District, Surat Thani 84330'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
    ],
    'Krabi': [
      {
        'title': 'Sofitel Krabi',
        'location': ['200 Moo 3, Tambon Ao Nang, Amphoe Mueang Krabi, Krabi 81000'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Ritz Carlton Reserve, Phulay Bay',
        'location': ['111 Moo 3, Nongthalee, Krabi 81000'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
    ],
    'Maldives': [
      {
        'title': 'Cora Cora',
        'location': ['Dhaalu Atoll, Maldives'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'So Maldives',
        'location': ['Emboodhoo Lagoon, Maldives'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Emerald Fushi',
        'location': ['Raa Atoll, Maldives'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Gili Lankan Fushi',
        'location': ['North Male Atoll, Maldives'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
    ],
    'Maldives - Mandara Spa Locations': [
      {
        'title': 'Adaaran Club Rannalhi',
        'location': ['South Male Atoll, Maldives'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Adaaran Prestige Vadoo Maldives',
        'location': ['South Male Atoll, Maldives'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Adaaran Select Hudhuranfushi',
        'location': ['North Male Atoll, Maldives'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Adaaran Select Meedhupparu',
        'location': ['Raa Atoll, Maldives'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Atmosphere Kanifushi Maldives',
        'location': ['Lhaviyani Atoll, Maldives'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Barcelo Whale Lagoon Maldives',
        'location': ['Haa Alifu Atoll, Maldives'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Cinnamon Dhonveli Maldives',
        'location': ['North Male Atoll, Maldives'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Cinnamon Hakuraa Huraa Maldives',
        'location': ['Meemu Atoll, Maldives'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Cinnamon Velifushi Maldives',
        'location': ['Vaavu Atoll, Maldives'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Club Med Kani',
        'location': ['North Male Atoll, Maldives'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Ellaidhoo Maldives by Cinnamon',
        'location': ['Baa Atoll, Maldives'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Hulhule Island Hotel',
        'location': ['North Male Atoll, Maldives'],
        'icon': Icons.spa,
        'color': const Color(0xFF8BC34A),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'Madifushi Private Island',
        'location': ['Thaa Atoll, Maldives'],
        'icon': Icons.self_improvement,
        'color': const Color(0xFF2196F3),
        'imageUrl': 'assets/images/sediments.webp',
      },
      {
        'title': 'NOOE Maldives Kunaavashi',
        'location': ['Raa Atoll, Maldives'],
        'icon': Icons.opacity,
        'color': const Color(0xFF4CAF50),
        'imageUrl': 'assets/images/sediments.webp',
      },
    ],
    'Cambodia': [
      {
        'title': 'Anantara Angkor Siem Reap',
        'location': ['National Road 6, Khum Sra Nge, Siem Reap, Cambodia'],
        'icon': Icons.directions_walk,
        'color': const Color(0xFFFF9800),
        'imageUrl': 'assets/images/sediments.webp',
      },
    ],
  };

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
        'Deep integration of Moringa\'s wellness benefits, adding a unique element to your existing treatments',
      ],
      'icon': Icons.healing,
    },
    {
      'title': 'Let\'s Build Something Lasting',
      'tips': [
        'For those ready to fully embrace the Moringa philosophy, we oﬀer select Moringa Project Spa partnerships—an opportunity to bring an exclusive, Moringa-infused wellness concept to your space.',
        'The best collaborations are about building something real and rooted. If you share our passion for intentional wellness, let\'s talk.',
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
                    'We partner with those who share our passion for crafting intentional, immersive experiences—the kind that understands that wellness isn\'t just about what we use—it\'s also about how we experience it.',
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
                    'Where to find us - Hotels & Spas',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GlacialIndifference',
                      color: Color(0xFF47734E),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ..._spaLocationsByRegion.entries.expand((regionEntry) {
                    return [
                      // Region heading
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 12),
                        child: Text(
                          regionEntry.key,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'GlacialIndifference',
                            color: Color(0xFF47734E),
                          ),
                        ),
                      ),
                      // Locations in this region
                      ...regionEntry.value.map((location) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: _buildSpaLocationsCard(location),
                        );
                      }).toList(),
                    ];
                  }).toList(),
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
                          '\nYou need a skincare that starts at the root slow, generous, and deeply restorative, whether it\'s the Miracle Moringa Body Massage or a Rejuvenating Moringa Facial.'
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
          color: (location['color'] as Color).withOpacity(0.3),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
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