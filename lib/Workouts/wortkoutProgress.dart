import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/presentation/ColorManager.dart';
import '../Progress/progress.dart';
import 'exercises.dart';

class WorkoutProgress extends StatelessWidget {
  const WorkoutProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
          const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinearProgressIndicator(
                value: 0.16,
                color: ColorManager.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Lunges",
                style: TextStyle(
                  color: ColorManager.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                "assets/workouts/fullbody/lunges.jpg",
                height: 400,
                width: 300,
              ),
              const Text(
                "1. Starting Position: Stand up straight with your feet hip-width apart. Keep your shoulders back and your chest up. You can place your hands on your hips or at your sides for balance.\n"
                    "2. Step Forward: Take a step forward with one leg. The length of your step depends on your comfort and flexibility. A standard lunge usually involves taking a step that's about as long as one of your strides when walking.\n"
                    "3. Bend Your Knees: As you step forward, bend both your front and back knees to lower your body. Your front knee should be at a 90-degree angle, with your thigh parallel to the ground or slightly above. Ensure that your back knee comes close to the ground without touching it.\n"
                    "4. Maintain Proper Form: Keep your torso upright, your core engaged, and your back straight. Avoid leaning too far forward or backward. It's important to maintain proper posture throughout the exercise.\n"
                    "5. Push Back: Push through your front heel to return to the starting position. Your back foot should follow, bringing you back to a standing position.\n"
                    "6. Repeat: You can perform the same number of lunges with one leg and then switch to the other leg, or alternate legs for a more dynamic workout\n",
                style: TextStyle(
                  letterSpacing: 1.0, //This will all spacing between letters
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Exercise2()),
                );
              }, child: Text("NEXT")),
            ],
          ),
        ),
      ),
    );
  }
}
class Exercise2 extends StatelessWidget {
  const Exercise2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
          const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinearProgressIndicator(
                value: 0.32,
                color: ColorManager.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Crunches",
                style: TextStyle(
                  color: ColorManager.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                "assets/workouts/fullbody/crunches.jpg",
                height: 400,
                width: 300,
              ),
              const Text(
                "1. Starting Position: Stand up straight with your feet hip-width apart. Keep your shoulders back and your chest up. You can place your hands on your hips or at your sides for balance.\n"
                    "2. Step Forward: Take a step forward with one leg. The length of your step depends on your comfort and flexibility. A standard lunge usually involves taking a step that's about as long as one of your strides when walking.\n"
                    "3. Bend Your Knees: As you step forward, bend both your front and back knees to lower your body. Your front knee should be at a 90-degree angle, with your thigh parallel to the ground or slightly above. Ensure that your back knee comes close to the ground without touching it.\n"
                    "4. Maintain Proper Form: Keep your torso upright, your core engaged, and your back straight. Avoid leaning too far forward or backward. It's important to maintain proper posture throughout the exercise.\n"
                    "5. Push Back: Push through your front heel to return to the starting position. Your back foot should follow, bringing you back to a standing position.\n"
                    "6. Repeat: You can perform the same number of lunges with one leg and then switch to the other leg, or alternate legs for a more dynamic workout\n",
                style: TextStyle(
                  letterSpacing: 1.0, //This will all spacing between letters
                ),
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WorkoutProgress()),
                    );
                  }, child: const Text("PREVIOUS")),
                  const Spacer(),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Exercise3()),
                    );
                  }, child: const Text("NEXT")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise3 extends StatelessWidget {
  const Exercise3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
          const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinearProgressIndicator(
                value: 0.48,
                color: ColorManager.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Mountain Climb",
                style: TextStyle(
                  color: ColorManager.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                "assets/workouts/fullbody/mountainclimb.jpg",
                height: 400,
                width: 300,
              ),
              const Text(
                "1. Starting Position: Stand up straight with your feet hip-width apart. Keep your shoulders back and your chest up. You can place your hands on your hips or at your sides for balance.\n"
                    "2. Step Forward: Take a step forward with one leg. The length of your step depends on your comfort and flexibility. A standard lunge usually involves taking a step that's about as long as one of your strides when walking.\n"
                    "3. Bend Your Knees: As you step forward, bend both your front and back knees to lower your body. Your front knee should be at a 90-degree angle, with your thigh parallel to the ground or slightly above. Ensure that your back knee comes close to the ground without touching it.\n"
                    "4. Maintain Proper Form: Keep your torso upright, your core engaged, and your back straight. Avoid leaning too far forward or backward. It's important to maintain proper posture throughout the exercise.\n"
                    "5. Push Back: Push through your front heel to return to the starting position. Your back foot should follow, bringing you back to a standing position.\n"
                    "6. Repeat: You can perform the same number of lunges with one leg and then switch to the other leg, or alternate legs for a more dynamic workout\n",
                style: TextStyle(
                  letterSpacing: 1.0, //This will all spacing between letters
                ),
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Exercise2()),
                    );
                  }, child: const Text("PREVIOUS")),
                  const Spacer(),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Exercise4()),
                    );
                  }, child: const Text("NEXT")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise4 extends StatelessWidget {
  const Exercise4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
          const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinearProgressIndicator(
                value: 0.64,
                color: ColorManager.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Push Ups",
                style: TextStyle(
                  color: ColorManager.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                "assets/workouts/fullbody/pushups.jpg",
                height: 400,
                width: 300,
              ),
              const Text(
                "1. Starting Position: Stand up straight with your feet hip-width apart. Keep your shoulders back and your chest up. You can place your hands on your hips or at your sides for balance.\n"
                    "2. Step Forward: Take a step forward with one leg. The length of your step depends on your comfort and flexibility. A standard lunge usually involves taking a step that's about as long as one of your strides when walking.\n"
                    "3. Bend Your Knees: As you step forward, bend both your front and back knees to lower your body. Your front knee should be at a 90-degree angle, with your thigh parallel to the ground or slightly above. Ensure that your back knee comes close to the ground without touching it.\n"
                    "4. Maintain Proper Form: Keep your torso upright, your core engaged, and your back straight. Avoid leaning too far forward or backward. It's important to maintain proper posture throughout the exercise.\n"
                    "5. Push Back: Push through your front heel to return to the starting position. Your back foot should follow, bringing you back to a standing position.\n"
                    "6. Repeat: You can perform the same number of lunges with one leg and then switch to the other leg, or alternate legs for a more dynamic workout\n",
                style: TextStyle(
                  letterSpacing: 1.0, //This will all spacing between letters
                ),
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Exercise3()),
                    );
                  }, child: const Text("PREVIOUS")),
                  const Spacer(),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Exercise5()),
                    );
                  }, child: const Text("NEXT")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise5 extends StatelessWidget {
  const Exercise5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
          const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinearProgressIndicator(
                value: 0.8,
                color: ColorManager.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Single Leg Bridge",
                style: TextStyle(
                  color: ColorManager.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                "assets/workouts/fullbody/singlelegbridge.jpg",
                height: 400,
                width: 300,
              ),
              const Text(
                "1. Starting Position: Stand up straight with your feet hip-width apart. Keep your shoulders back and your chest up. You can place your hands on your hips or at your sides for balance.\n"
                    "2. Step Forward: Take a step forward with one leg. The length of your step depends on your comfort and flexibility. A standard lunge usually involves taking a step that's about as long as one of your strides when walking.\n"
                    "3. Bend Your Knees: As you step forward, bend both your front and back knees to lower your body. Your front knee should be at a 90-degree angle, with your thigh parallel to the ground or slightly above. Ensure that your back knee comes close to the ground without touching it.\n"
                    "4. Maintain Proper Form: Keep your torso upright, your core engaged, and your back straight. Avoid leaning too far forward or backward. It's important to maintain proper posture throughout the exercise.\n"
                    "5. Push Back: Push through your front heel to return to the starting position. Your back foot should follow, bringing you back to a standing position.\n"
                    "6. Repeat: You can perform the same number of lunges with one leg and then switch to the other leg, or alternate legs for a more dynamic workout\n",
                style: TextStyle(
                  letterSpacing: 1.0, //This will all spacing between letters
                ),
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Exercise4()),
                    );
                  }, child: const Text("PREVIOUS")),
                  const Spacer(),
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Exercise6()),
                    );
                  }, child: const Text("NEXT")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Exercise6 extends StatelessWidget {
  const Exercise6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
          const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinearProgressIndicator(
                value: 0.96,
                color: ColorManager.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Squats",
                style: TextStyle(
                  color: ColorManager.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                "assets/workouts/fullbody/squats.jpg",
                height: 400,
                width: 300,
              ),
              const Text(
                "1. Starting Position: Stand up straight with your feet hip-width apart. Keep your shoulders back and your chest up. You can place your hands on your hips or at your sides for balance.\n"
                    "2. Step Forward: Take a step forward with one leg. The length of your step depends on your comfort and flexibility. A standard lunge usually involves taking a step that's about as long as one of your strides when walking.\n"
                    "3. Bend Your Knees: As you step forward, bend both your front and back knees to lower your body. Your front knee should be at a 90-degree angle, with your thigh parallel to the ground or slightly above. Ensure that your back knee comes close to the ground without touching it.\n"
                    "4. Maintain Proper Form: Keep your torso upright, your core engaged, and your back straight. Avoid leaning too far forward or backward. It's important to maintain proper posture throughout the exercise.\n"
                    "5. Push Back: Push through your front heel to return to the starting position. Your back foot should follow, bringing you back to a standing position.\n"
                    "6. Repeat: You can perform the same number of lunges with one leg and then switch to the other leg, or alternate legs for a more dynamic workout\n",
                style: TextStyle(
                  letterSpacing: 1.0, //This will all spacing between letters
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProgressPage()),
                );
              }, child: const Text("FINISH")),
            ],
          ),
        ),
      ),
    );
  }
}

