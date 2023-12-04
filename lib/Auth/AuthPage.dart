import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/Auth/Login.dart';
import 'package:gobal_women_fitness_app/Auth/LoginOrRegister.dart';
import 'package:gobal_women_fitness_app/HomePage.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context ,snapshot){
          //user is logged in
          if(snapshot.hasData){
            return const HomePage();
          }else{
            return const LoginOrRegisterPage();
          }
        },

      ),
    );
  }
}
