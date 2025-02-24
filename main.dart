// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_shapeup_app3/login_page.dart';
import 'package:flutter_shapeup_app3/workOut_shedule_page.dart';
import 'foods_to_order_page.dart';
import 'outfit_page.dart';
import 'outfitpage_women.dart';
import 'weight_gain_workout_page.dart';
import 'women_weight_gain_page.dart';
import 'women_weightloss_page.dart';
import 'shape_up_page.dart';
import 'gender_selection_page.dart';
import 'men_categories_page.dart';
import 'women_categories_page.dart';
import 'meal_plan_page.dart';
import 'equipments_page.dart';
import 'weight_gain_page.dart';
import 'weight_loss_page.dart';
import 'workout_page.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shape Up App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: '/',
      routes: {
        '/LoginPage': (context) => LoginPage(),
        '/': (context) => ShapeUpPage(),
        '/genderSelection': (context) => GenderSelectionPage(),
        '/menCategories': (context) => MenCategoriesPage(),
        '/womenCategories': (context) => WomenCategoriesPage(),
        '/mealPlan': (context) => MealPlanPage(),
        '/equipments': (context) => EquipmentsPage(),
        '/weightGain': (context) => WeightGainPage(),
        '/weightLoss': (context) => WeightLossPage(),
        '/workout': (context) => WorkoutPage(),
        '/weightGainWorkout': (context) => WeightGainWorkoutPage(),
        '/OutfitPage': (context) => OutfitPage(),
        '/OutfitPageWomen': (context) => OutfitPageWomen(),
        '/WomenWeightGainWorkoutPage':
            (context) => WomenWeightGainWorkoutPage(),
        '/WomenWeightLossWorkoutPage':
            (context) => WomenWeightLossWorkoutPage(),
        '/foodsToOrderPage': (context) => FoodsToOrderPage(),
        '/workouts': (context) => WorkoutSchedulePage(),
      },
    );
  }
}
