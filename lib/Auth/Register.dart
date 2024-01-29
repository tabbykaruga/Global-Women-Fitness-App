import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../HomePage.dart';
import '../firebase/firebaseAPIs.dart';
import '../presentation/ColorManager.dart';
import '../presentation/Padding.dart';
import '../presentation/StateManager.dart';
import '../presentation/Strings.dart';
import 'SignInMethods/GoogleSignIn.dart';


class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({Key? key,required this.onTap}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  Future <void> userRegister() async {
    //show dialog
    loadingAnimation(context);
    //try sign in

    try {
      await FirebaseAuth.instance.signOut();
      await GoogleSignIn().signOut();

      if(_passwordController.text == _confirmPasswordController.text){
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text);

        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomePage()));
      }else{
        Navigator.pop(context);
        message(context,"Passwords don`t match!!");
      }
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        message(context,"Invalid login Credentials");
      } else {
        genericErrorMessage(context, e.toString());
      }
    } catch (e) {
      Navigator.pop(context);
      genericErrorMessage(context, e.toString());
    }
  }

  appleSignInFirebase() {}

  Future googleSignIn() async {
    final user = await GoogleSignInApi.login();
    if (user == null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Sign In Failed")));
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()));
    }
  }
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.only(top: currentHeight/20),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/logo.png'),
                    height: 150,
                    width: 150,
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: AppPadding.p28, right: AppPadding.p28),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: ColorManager.darkGrey)),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: ColorManager.darkPrimary),
                        ),
                        hintText: "Email",
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSize.s28),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: AppPadding.p28, right: AppPadding.p28),
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: ColorManager.darkGrey)),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: ColorManager.darkPrimary),
                          ),
                          hintText: "Password"),
                    ),
                  ),
                  const SizedBox(height: AppSize.s28),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: AppPadding.p28, right: AppPadding.p28),
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: _confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: ColorManager.darkGrey)),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: ColorManager.darkPrimary),
                          ),
                          hintText: "Confirm Password"),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: AppPadding.p28, right: AppPadding.p28),
                    child: SizedBox(
                      width: double.infinity,
                      height: AppSize.s40,
                      child: ElevatedButton(
                        onPressed: () {
                          userRegister();
                        },
                        child: Text(
                          AppString.REGISTER,
                          style: TextStyle(
                            color: ColorManager.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30, left: AppPadding.p28, right: AppPadding.p28,bottom: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: ColorManager.darkGrey,
                          ),
                        ),
                        const Text(" Or Continue With "),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: ColorManager.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: ColorManager.blue),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  InkWell(
                            onTap: FirebaseApis().signInWithGoogleFirebase,
                            child: const Image(
                              image: AssetImage('assets/google.png'),
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: ColorManager.blue),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: InkWell(
                            onTap: appleSignInFirebase,
                            child: const Image(
                              image: AssetImage('assets/apple.png'),
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already a member ?"),
                          GestureDetector(
                            onTap:widget.onTap,
                            child: Text(
                              AppString.login,
                              style: TextStyle(
                                color: ColorManager.blue,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
