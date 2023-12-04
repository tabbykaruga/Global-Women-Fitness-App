import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/Auth/AuthPage.dart';
import 'package:gobal_women_fitness_app/presentation/ColorManager.dart';
import 'package:gobal_women_fitness_app/resources/RouteManager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase/firebaseAPIs.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseApis().initNotification();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool firstTime = prefs.getBool('first_time') ?? true;
  if (firstTime) {
    prefs.setBool('first_time', false);
    runApp(
       const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
         onGenerateRoute: RouteGenerator.getRoute,
      ),
    );
  }
  else {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const AuthPage(),
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
              elevation: 2,
                minimumSize: const Size(150, 50),
                textStyle: const TextStyle(fontSize: 14),
                backgroundColor: ColorManager.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
          ),
        ),
      ),
    );
  }
}
