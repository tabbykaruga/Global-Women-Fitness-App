import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/resources/StringManager.dart';
import 'package:gobal_women_fitness_app/resources/AssetsManager.dart';
import 'package:gobal_women_fitness_app/resources/ValueManager.dart';
import 'package:gobal_women_fitness_app/presentation/ColorManager.dart';
import '../resources/model/model.dart';
import 'exercises.dart';

List<WorkOutObject> _getWorkoutData() => [
      WorkOutObject(
          AppStrings.fullBody, WorkoutDuration.d30, WorkOutAssets.fullBody),
      WorkOutObject(AppStrings.abs, WorkoutDuration.d30, WorkOutAssets.abs),
      WorkOutObject(
          AppStrings.biceps, WorkoutDuration.d30, WorkOutAssets.biceps),
      WorkOutObject(AppStrings.back, WorkoutDuration.d30, WorkOutAssets.back),
      WorkOutObject(AppStrings.arms, WorkoutDuration.d30, WorkOutAssets.arm),
      WorkOutObject(AppStrings.legs, WorkoutDuration.d30, WorkOutAssets.legs),
    ];

class Workouts extends StatelessWidget {
  const Workouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                shrinkWrap: true,
                itemCount: _getWorkoutData().length,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final workout = _getWorkoutData()[index];
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(height: 20.0),
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Exercises()),
                          ),
                        },
                        child: Card(
                          shadowColor: ColorManager.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          color: ColorManager.blue,
                          margin: const EdgeInsets.only(bottom: 20.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(workout.image),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(16.0)),
                                ),
                                height: 200,
                                width: double.infinity,
                              ),
                              ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.0),
                                  child: Text(
                                    workout.title,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 15,
                                        color: Colors.white.withOpacity(0.7),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        workout.duration,
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.7),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
