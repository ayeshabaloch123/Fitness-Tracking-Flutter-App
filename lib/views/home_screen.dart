// home_screen.dart
import 'package:fitness_tracker_app/views/workout_history_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../controllers/workout_controller.dart';
import 'add_workout_screen.dart';
import 'workout_list.dart';

// home_screen.dart
// ... (existing imports)

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fitness Tracker',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(40.0),
            child: Image.asset(
              'assets/app_logo.png',
              height: 250.0,
              width: 250.0,
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 120.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddWorkoutScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Add Exercises',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WorkoutHistoryScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Check History',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
