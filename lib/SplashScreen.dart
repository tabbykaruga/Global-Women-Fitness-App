import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/splashscreens/splashpages.dart';
import 'package:loading_animations/loading_animations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 8),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const SplashPages())
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            height: 200,
          ),
          const Image(
            image: AssetImage('assets/logo.png'),
            height: 250.0,
            width: 250.0,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'GLOBAL WOMEN',
              style: TextStyle(
                fontSize: 45,
                color: Color.fromRGBO(55, 75, 155, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 180,
          ),
          Column(
            children: [
              LoadingBouncingGrid.circle(
                size: 30,
                backgroundColor: const Color.fromRGBO(55, 75, 155, 1),
              ),
            ],
          ),
          const Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Text(
                  'Powered By TMK',
                  style: TextStyle(
                    fontSize: 15,
                    // fontFamily: 'Arial',
                    color: Color.fromRGBO(55, 75, 155, 1),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

