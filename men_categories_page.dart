import 'package:flutter/material.dart';

class MenCategoriesPage extends StatelessWidget {
  const MenCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CATEGORIES MENS'),
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
          _buildCategoryItem(context, 'assets/slim.jpg', 'SLIM', '/workout'),
          _buildCategoryItem(
            context,
            'assets/bulk.jpg',
            'BULK UP',
            '/weightGainWorkout',
          ),
          _buildCategoryItem(
            context,
            'assets/dressmen.jpg',
            'DRESS',
            '/OutfitPage',
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
          // Add navigation logic for other categories if needed
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
