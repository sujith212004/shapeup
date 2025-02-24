import 'package:flutter/material.dart';

class WeightLossPage extends StatelessWidget {
  const WeightLossPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WEIGHT LOSS'),
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
              SizedBox(height: 20),
              Image.asset(
                'assets/wheel.jpg',
                height: 360,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Leafy greens',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'These are low in calories and high in fiber, which can help you feel full and satisfied.',
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/leafygreens.jpg',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Whole grains',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Whole grains are a good source of fiber, which can help you feel full and satisfied.',
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/wholegrains.jpg',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Berries',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Berries are a good source of vitamins, minerals, and fiber.',
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/berries.jpg',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Text(
                'Cruciferous vegetables',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'These vegetables, such as broccoli and cauliflower, are also low in calories and high in fiber.',
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/vegetables.jpg',
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
}
