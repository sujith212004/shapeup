import 'package:flutter/material.dart';

class WorkoutSchedulePage extends StatelessWidget {
  WorkoutSchedulePage({super.key});

  final Map<String, List<WorkoutDay>> workoutPlan = {
    'Week 1': [
      WorkoutDay(
        day: 'Monday',
        exercises: [
          '15 Minute Walk',
          '30 Jumping Jacks',
          '20 Squats',
          '3 Sets of 10 Push Ups',
          '20 Butt Kicks',
        ],
      ),
      WorkoutDay(
        day: 'Tuesday',
        exercises: [
          '20 Minute Walk',
          '35 Jumping Jacks',
          '30 Sit-Ups',
          '30 Second Side Plank',
          '25 Butt Kicks',
        ],
      ),
      WorkoutDay(
        day: 'Wednesday',
        exercises: [
          '25 Minute Walk',
          '40 Jumping Jacks',
          '25 Squats',
          '3 Sets of 15 Push-Ups',
          '30 Butt Kicks',
        ],
      ),
      WorkoutDay(
        day: 'Thursday',
        exercises: [
          '30 Minute Walk',
          '45 Jumping Jacks',
          '35 Sit-Ups',
          '35 Second Plank',
          '35 Butt Kicks',
        ],
      ),
      WorkoutDay(
        day: 'Friday',
        exercises: [
          '35 Minute Walk',
          '50 Jumping Jacks',
          '30 Squats',
          '35 Second Side Plank',
          '40 Butt Kicks',
        ],
      ),
      WorkoutDay(
        day: 'Saturday',
        exercises: [
          '40 Minute Walk',
          '55 Jumping Jacks',
          '40 Sit-Ups',
          '3 Sets of 20 Push-Ups',
          '45 Butt Kicks',
        ],
      ),
      WorkoutDay(day: 'Sunday', exercises: ['REST']),
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WORKOUTS SCHEDULE'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.orange,
                child: Text(
                  'Workout Plan FOR BEGINNERS\nWeek 1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ...workoutPlan['Week 1']!.map(
              (workoutDay) => _buildWorkoutDayCard(workoutDay),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    Navigator.pushNamed(context, '/genderSelection');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.restaurant),
                  onPressed: () {
                    Navigator.pushNamed(context, '/foodsToOrderPage');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.fitness_center),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/equipments',
                    ); // Navigate to workouts page
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWorkoutDayCard(WorkoutDay workoutDay) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                workoutDay.day,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ...workoutDay.exercises.map(
              (exercise) => ListTile(title: Text(exercise)),
            ),
          ],
        ),
      ),
    );
  }
}

class WorkoutDay {
  final String day;
  final List<String> exercises;

  WorkoutDay({required this.day, required this.exercises});
}
