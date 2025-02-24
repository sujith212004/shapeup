import 'package:flutter/material.dart';

class WeightGainPage extends StatelessWidget {
  const WeightGainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WEIGHT GAIN'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'HIGH CALORIE GAINER FOODS',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildFoodItem('assets/banana.jpg', 'Banana', '200 KCAL'),
                  _buildFoodItem('assets/avacado.jpg', 'Avocado', '200 KCAL'),
                  _buildFoodItem(
                    'assets/peanutbutter.jpg',
                    'Peanut Butter',
                    '200 KCAL',
                  ),
                  _buildFoodItem('assets/hummas.jpg', 'Hummus', '200 KCAL'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildFoodItem('assets/dates.jpg', 'Dates', '200 KCAL'),
                  _buildFoodItem(
                    'assets/chiaseed.jpg',
                    'Chia Seeds',
                    '200 KCAL',
                  ),
                  _buildFoodItem('assets/almonds.jpg', 'Almonds', '200 KCAL'),
                  _buildFoodItem(
                    'assets/sweetpotato.jpg',
                    'Sweet potato',
                    '200 KCAL',
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Carbohydrates',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Rice, Whole Grain Bread, Whole Grain Cereals, Dried Fruits, Dark Chocolates, Other Starches (Like Potato)',
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/carbohydrates.jpg',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Protein',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Salmon, Eggs, Protein Shakes, protein Supplements'),
              SizedBox(height: 20),
              Image.asset(
                'assets/protein.jpg',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Dairy',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Milk, Cheese, Yogurt'),
              SizedBox(height: 20),
              Image.asset(
                'assets/dairy.jpg',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Unsaturated Fats',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Olive Oil, Nuts And Seeds, Avocados'),
              SizedBox(height: 20),
              Image.asset(
                'assets/unsaturatedfats.jpg',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFoodItem(String imagePath, String title, String kcal) {
    return Column(
      children: [
        Image.asset(imagePath, height: 80, width: 80),
        Text(title),
        Text(kcal),
      ],
    );
  }
}
