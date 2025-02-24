import 'package:flutter/material.dart';

class OutfitPage extends StatelessWidget {
  const OutfitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OUTFIT MENS'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          _buildOutfitItem(context, 'assets/towel.jpg', 'Towel', 800),
          _buildOutfitItem(context, 'assets/shorts.jpg', 'Shorts', 480),
          _buildOutfitItem(
            context,
            'assets/Sleeveless.jpg',
            'Sleeveless t-shirt',
            350,
          ),
          _buildOutfitItem(context, 'assets/T-shirt.jpg', 'T-shirt', 420),
          _buildOutfitItem(context, 'assets/joggers.jpg', 'Joggers', 680),
          _buildOutfitItem(
            context,
            'assets/trackpants.jpg',
            'Track pants',
            599,
          ),
        ],
      ),
    );
  }

  Widget _buildOutfitItem(
    BuildContext context,
    String imagePath,
    String title,
    int price,
  ) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 200, width: 200),
          Text(title),
          Text('₹ $price'),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(5, (index) => Icon(Icons.star)),
          ),
          Text('Free delivery'),
        ],
      ),
    );
  }
}
