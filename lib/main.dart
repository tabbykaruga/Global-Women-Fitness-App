import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/resources/model/ColorManager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'HomePage.dart';
import 'SplashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool firstTime = prefs.getBool('first_time') ?? true;
  if (firstTime) {
    prefs.setBool('first_time', false);
    runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  } else {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: ThemeData(
          // appBarTheme: AppBarTheme(
          //   centerTitle: true,
          //   color: ColorManager.blue,
          //   elevation: 4,
          //   shadowColor: ColorManager.blue,
          //   backgroundColor: ColorManager.lightPrimary,
          //   iconTheme: IconThemeData(
          //     color: ColorManager.blue,
          //   ),
          //   titleTextStyle: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.bold,
          //     color: ColorManager.blue,
          //   ),
          // ),
          cardTheme: CardTheme(
            color: ColorManager.blue,
            shadowColor: ColorManager.blue,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            margin: const EdgeInsets.only(bottom: 20.0),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 12),
                backgroundColor: ColorManager.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
          ),
        ),
      ),
    );
  }
}
