import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  String selectedCategory = 'All';

  // Real products from Moringa Project Thailand website
  final List<Map<String, dynamic>> allProducts = [
    // Individual Products
    {
      'id': 1,
      'name': 'Moringa Facial Oil',
      'price': 890.00,
      'category': 'Face Care',
      'image': 'assets/images/moringa_facial_oil.webp',
      'description': 'Nourishing facial oil powered by cold-pressed Moringa oil',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 2,
      'name': 'Moringa Hair Oil',
      'price': 985.00,
      'category': 'Hair Care',
      'image': 'assets/images/moringa_hair_oil.webp',
      'description': 'Deep conditioning hair oil for strength and shine',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 3,
      'name': 'Moringa Body Wash',
      'price': 675.00,
      'category': 'Body Care',
      'image': 'assets/images/moringa_body_wash.webp',
      'description': 'Gentle cleansing body wash with moringa oil',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 4,
      'name': 'Moringa Body Oil',
      'price': 1375.00,
      'category': 'Body Care',
      'image': 'assets/images/moringa_body_oil.webp',
      'description': 'Luxurious body oil for silky smooth skin',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 5,
      'name': 'Organic Moringa Tea',
      'price': 280.00,
      'category': 'Wellness',
      'image': 'assets/images/organic_moringa_tea.webp',
      'description': 'Premium organic moringa leaf tea',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 6,
      'name': 'Nourishing Moringa Soap',
      'price': 275.00,
      'category': 'Body Care',
      'image': 'assets/images/nourishing_moringa_soap.webp',
      'description': 'Moringa oil & aloe vera face & body bar',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 7,
      'name': 'Moringa Clay Face Mask',
      'price': 975.00,
      'category': 'Face Care',
      'image': 'assets/images/moringa_clay_face_mask.webp',
      'description': 'Purifying clay mask with moringa extract',
      'currency': 'THB',
      'inStock': true,
    },
    
    // Gift Sets & Bundles
    {
      'id': 8,
      'name': 'Pampering Set',
      'price': 1450.00,
      'category': 'Gift Sets',
      'image': 'assets/images/pampering_set.webp',
      'description': 'Moringa Facial Oil with Gua Sha & Face Roller',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 9,
      'name': 'Get The Glow Bundle',
      'price': 1100.00,
      'category': 'Gift Sets',
      'image': 'assets/images/get_the_glow_bundle.webp',
      'description': 'Moringa Oil and Moringa Soap set',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 10,
      'name': 'Moringa Ritual Set',
      'price': 3200.00,
      'category': 'Gift Sets',
      'image': 'assets/images/moringa_ritual_set.webp',
      'description': 'The ultimate self-care set',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 11,
      'name': 'Moringa Brightening Set',
      'price': 3050.00,
      'category': 'Gift Sets',
      'image': 'assets/images/moringa_brightening_set.webp',
      'description': 'Complete moringa face care set',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 12,
      'name': 'From Dusk till Dawn Set',
      'price': 2800.00,
      'category': 'Gift Sets',
      'image': 'assets/images/from_dusk_till_dawn_set.webp',
      'description': 'Moringa body oil gift set',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 13,
      'name': 'Moringa Calming Gift Set',
      'price': 2450.00,
      'category': 'Gift Sets',
      'image': 'assets/images/moringa_calming_gift_set.webp',
      'description': 'Relaxing moringa gift set',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 14,
      'name': 'Refresh Dawn or Relax Dusk Set',
      'price': 2170.00,
      'category': 'Gift Sets',
      'image': 'assets/images/refresh_dawn_or_relax_dusk_set.webp',
      'description': 'Morning and evening wellness set',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 15,
      'name': 'Glow Getter Travel Bag',
      'price': 2850.00,
      'category': 'Travel Sets',
      'image': 'assets/images/glow_getter_travel_bag.webp',
      'description': 'Travel-friendly moringa essentials',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 16,
      'name': 'Glow Getter Travel Set',
      'price': 4650.00,
      'category': 'Travel Sets',
      'image': 'assets/images/glow_getter_travel_set.webp',
      'description': 'Complete travel wellness kit',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 17,
      'name': 'The Holiday Bag',
      'price': 3900.00,
      'category': 'Travel Sets',
      'image': 'assets/images/the_holiday_bag.webp',
      'description': 'Complete travel wellness kit',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 18,
      'name': 'Moringa Project Canvas Tote Bag',
      'price': 625.00,
      'category': 'Travel Sets',
      'image': 'assets/images/moringa_project_canvas_tote_bag',
      'description': 'Complete travel wellness kit',
      'currency': 'THB',
      'inStock': true,
    },
    {
      'id': 19,
      'name': 'Wooden Scalp Brush Massager',
      'price': 320.00,
      'category': 'Hair Care',
      'image': 'assets/images/wooden_scalp_brush_massager.webp',
      'description': 'Complete travel wellness kit',
      'currency': 'THB',
      'inStock': true,
    },
  ];

  final List<String> categories = [
    'All',
    'Face Care',
    'Body Care',
    'Hair Care',
    'Wellness',
    'Gift Sets',
    'Travel Sets',
  ];

  List<Map<String, dynamic>> get filteredProducts {
    if (selectedCategory == 'All') {
      return allProducts;
    }
    return allProducts.where((product) => product['category'] == selectedCategory).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF7F0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF47734E),
        title: const Text(
          'Shop',
          style: TextStyle(
            fontFamily: 'GlacialIndifference',
            color: Color(0xFFFAF7F0),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Color(0xFFFAF7F0)),
            onPressed: () {
              // TODO: Implement search functionality
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Search functionality coming soon!'),
                  backgroundColor: Color(0xFF47734E),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Color(0xFFFAF7F0)),
            onPressed: () {
              // TODO: Navigate to cart
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Category filter section
          _buildCategoryFilter(),
          
          // Products grid
          Expanded(
            child: _buildProductsGrid(),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryFilter() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${filteredProducts.length} Products',
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
    );
  }

  Widget _buildProductsGrid() {
    if (filteredProducts.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              size: 64,
              color: Color(0xFF47734E),
            ),
            SizedBox(height: 16),
            Text(
              'No products found',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'GlacialIndifference',
                color: Color(0xFF47734E),
              ),
            ),
          ],
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.6,
      ),
      itemCount: filteredProducts.length,
      itemBuilder: (context, index) {
        final product = filteredProducts[index];
        return _buildProductCard(product);
      },
    );
  }

  Widget _buildProductCard(Map<String, dynamic> product) {
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
            // TODO: Navigate to product detail page
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${product['name']} - Product details coming soon!'),
                backgroundColor: const Color(0xFF47734E),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product image
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8E5DC),
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(product['image']),
                        fit: BoxFit.cover,
                        onError: (exception, stackTrace) {
                          // Fallback if image not found
                        },
                      ),
                    ),
                    child: product['image'].toString().contains('assets/images/')
                      ? null
                      : const Center(
                          child: Icon(
                            Icons.spa,
                            size: 40,
                            color: Color(0xFF47734E),
                          ),
                        ),
                  ),
                ),
                
                const SizedBox(height: 12),
                
                // Product details
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product name
                      Text(
                        product['name'],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GlacialIndifference',
                          color: Color(0xFF47734E),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      
                      const SizedBox(height: 4),
                      
                      // Product category
                      Text(
                        product['category'],
                        style: const TextStyle(
                          fontSize: 12,
                          fontFamily: 'GlacialIndifference',
                          color: Color(0xFF5C8A63),
                        ),
                      ),
                      
                      const Spacer(),
                      
                      // Price and add to cart
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '฿${product['price'].toStringAsFixed(0)}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'GlacialIndifference',
                                    color: Color(0xFF47734E),
                                  ),
                                ),
                                const Text(
                                  'THB',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'GlacialIndifference',
                                    color: Color(0xFF5C8A63),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: product['inStock'] 
                                ? const Color(0xFF47734E) 
                                : const Color(0xFF5C8A63),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              product['inStock'] 
                                ? Icons.add_shopping_cart 
                                : Icons.hourglass_empty,
                              size: 16,
                              color: const Color(0xFFFAF7F0),
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
        ),
      ),
    );
  }
}
