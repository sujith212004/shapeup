import 'package:flutter/material.dart';
import 'package:flutter_shapeup_app3/timer_page.dart';

class WomenWeightLossWorkoutPage extends StatelessWidget {
  const WomenWeightLossWorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WORKOUTS'),
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
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'WEIGHT LOSS FOR WOMEN',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [Icon(Icons.calendar_today), Text('For Gym')],
                      ),
                      SizedBox(height: 10),
                      Text('24 workout days(4 sessions per week)'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Exercises',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              _buildExerciseItem(
                context,
                'assets/treadmillwomen.jpg',
                'Treadmill',
                '8min, 110-140 bpm',
                '30sec-Rest',
                '100',
              ),
              _buildExerciseItem(
                context,
                'assets/kettlebellwomen.jpg',
                'Kettlebell Swings',
                '8-12 kg (18-26 lbs)',
                '30sec-Rest',
                '80',
              ),
              _buildExerciseItem(
                context,
                'assets/jumbsquatwomen.jpg',
                'Jump Squats',
                'Reps: 25-30 per set',
                '30sec-Rest',
                '56',
              ),
              _buildExerciseItem(
                context,
                'assets/burpeeswomen.jpg',
                'Burpees',
                'Reps: 25-30 per set',
                '30sec-Rest',
                '79',
              ),
              SizedBox(height: 200),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.restaurant),
                    onPressed: () {
                      // Navigate to diet page - Add your navigation logic here
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: () {
                      // Navigate to workouts page - Add your navigation logic here
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExerciseItem(
    BuildContext context,
    String imagePath,
    String title,
    String details1,
    String details2,
    String percentage,
  ) {
    return Card(
      child: Row(
        children: [
          Image.asset(imagePath, height: 50, width: 50),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(details1),
                Text(details2),
              ],
            ),
          ),
          Text('$percentage%'),
          ElevatedButton.icon(
            onPressed:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TimerPage()),
                ),
            icon: Icon(Icons.arrow_forward),
            label: Text('Go'),
          ),
        ],
      ),
    );
  }
}
