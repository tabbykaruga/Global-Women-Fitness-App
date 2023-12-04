import 'package:flutter/cupertino.dart';
import 'package:gobal_women_fitness_app/Auth/Register.dart';

import 'Login.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({Key? key}) : super(key: key);

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool showLoginPage = true;

  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
   if(showLoginPage){
     return LoginPage(
       onTap : togglePages,
     );
   }else{
     return  RegisterPage(
       onTap: togglePages,
     );
   }
  }
}
