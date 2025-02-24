import 'package:flutter/material.dart';

class WomenCategoriesPage extends StatelessWidget {
  const WomenCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CATEGORIES WOMEN'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildCategoryItem(context, 'assets/food.jpg', 'FOOD', '/mealPlan'),
          _buildCategoryItem(
            context,
            'assets/equipments.jpg',
            'EQUIPMENTS',
            '/equipments',
          ),
          _buildCategoryItem(
            context,
            'assets/womenslim.jpg',
            'BULK UP',
            '/WomenWeightGainWorkoutPage',
          ),
          _buildCategoryItem(
            context,
            'assets/womenbulk.jpg',
            'SLIM',
            '/WomenWeightLossWorkoutPage',
          ),
          _buildCategoryItem(
            context,
            'assets/womendress.jpg',
            'DRESS',
            '/OutfitPageWomen',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(
    BuildContext context,
    String imagePath,
    String title,
    String? route, // Make route nullable
  ) {
    return Card(
      child: InkWell(
        onTap: () {
          if (route != null) {
            Navigator.pushNamed(context, route);
          }
          // Add navigation logic here for other categories if needed
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                imagePath,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
