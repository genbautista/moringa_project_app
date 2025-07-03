import 'package:flutter/material.dart';

class ViewGuide extends StatefulWidget {
  const ViewGuide({super.key});

  @override
  State<ViewGuide> createState() => _ViewGuideState();
}

class _ViewGuideState extends State<ViewGuide> {
  final List<Map<String, dynamic>> _guideButtons = List.generate(6, (index) => {
    'title': 'Guide ${index + 1}',
    'icon': Icons.spa, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Wellness Guide',
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // header section
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
                          decoration: BoxDecoration(
                            color: const Color(0xFF47734E).withValues(alpha: 0.1),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.menu_book,
                            color: Color(0xFF47734E),
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Expanded(
                          child: Text(
                            'Your Community Wellness Guide',
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
                    const Text(
                      'Use this view guide to discover more about Moringa and Thailand.',
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
              
              const SizedBox(height: 24),
              
              // guide categories title
              const Text(
                'Guide Categories',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GlacialIndifference',
                  color: Color(0xFF47734E),
                ),
              ),
              
              const SizedBox(height: 16),
              
              // 3 x 3 grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, 
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.85, 
                ),
                itemCount: _guideButtons.length,
                itemBuilder: (context, index) {
                  return _buildGuideButton(_guideButtons[index], index);
                },
              ),
              
              const SizedBox(height: 32),
              
              // call to action
              Center(
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
                          Icon(Icons.explore, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Click here to shop our products.',
                            style: TextStyle(
                              fontFamily: 'GlacialIndifference',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Start your wellness journey today',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'GlacialIndifference',
                        color: Color(0xFF5C8A63),
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGuideButton(Map<String, dynamic> buttonData, int index) {
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
            // placeholder action
            debugPrint('Guide button ${index + 1} tapped');
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Guide ${index + 1} - Coming Soon!'),
                backgroundColor: const Color(0xFF47734E),
                duration: const Duration(seconds: 1),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // icon container
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF47734E).withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    buttonData['icon'],
                    size: 24,
                    color: const Color(0xFF47734E),
                  ),
                ),
                
                const SizedBox(height: 8),
                
                // title
                Text(
                  buttonData['title'],
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GlacialIndifference',
                    color: Color(0xFF47734E),
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}