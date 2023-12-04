import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/Workouts/exercises.dart';
import 'package:gobal_women_fitness_app/Workouts/workouts.dart';
import 'package:gobal_women_fitness_app/resources/StringManager.dart';
import '../SplashScreen.dart';


class Routes{
  static const String splashRoute = "/";
  static const String workoutRoute = "/onWorkout";
  static const String exerciseRoute = "/exercise";

}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.splashRoute :
        return MaterialPageRoute(builder: (_)=> const SplashScreen());
      case Routes.workoutRoute :
        return MaterialPageRoute(builder: (_)=> const Workouts());
      case Routes.exerciseRoute :
        return MaterialPageRoute(builder: (_)=> const Exercises());

      // case Routes.loginRoute :
      //   return MaterialPageRoute(builder: (_)=> const LoginView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_)=>
        Scaffold(
            appBar: AppBar(
              title: const Text(AppStrings.noRouteFound),
            ),
            body: const Center(
              child: Text(AppStrings.noRouteFound),
            )
        )
    );
  }
}

