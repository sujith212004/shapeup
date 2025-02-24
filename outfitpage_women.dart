import 'package:flutter/material.dart';

class OutfitPageWomen extends StatelessWidget {
  const OutfitPageWomen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OUTFIT WOMEN'),
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
          _buildOutfitItem(context, 'assets/shortswomen.jpg', 'Shorts', 480),
          _buildOutfitItem(
            context,
            'assets/sleevelesswomen.jpg',
            'Sleeveless t-shirt',
            350,
          ),
          _buildOutfitItem(context, 'assets/jacket.jpg', 'Jacket', 700),
          _buildOutfitItem(context, 'assets/combosuit.jpg', 'Combo suits', 680),
          _buildOutfitItem(
            context,
            'assets/trackpantwomen.jpg',
            'Track pants',
            800,
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
          Image.asset(imagePath, height: 250, width: 250),
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
