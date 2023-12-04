import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/Auth/LoginOrRegister.dart';
import 'package:gobal_women_fitness_app/HomePage.dart';
import 'package:gobal_women_fitness_app/Workouts/exercises.dart';
import 'package:gobal_women_fitness_app/Workouts/workouts.dart';
import 'package:gobal_women_fitness_app/resources/StringManager.dart';
import '../SplashScreen.dart';


class Routes{
  static const String splashRoute = "/";
  static const String LoginOrRegisterRoute = "/LoginOrRegisterRoute";
  static const String homeRoute = "/homeRoute";


}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.splashRoute :
        return MaterialPageRoute(builder: (_)=> const SplashScreen());
      case Routes.LoginOrRegisterRoute :
        return MaterialPageRoute(builder: (_)=> const LoginOrRegisterPage());
      case Routes.homeRoute :
        return MaterialPageRoute(builder: (_)=> const HomePage());
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

