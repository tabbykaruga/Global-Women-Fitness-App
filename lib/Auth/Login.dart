import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/Auth/ForgottenPassword.dart';
import 'package:gobal_women_fitness_app/HomePage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lottie/lottie.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../firebase/firebaseAPIs.dart';
import '../presentation/Padding.dart';
import '../presentation/StateManager.dart';
import '../presentation/Strings.dart';
import '../presentation/ColorManager.dart';
import '../presentation/assetsManager.dart';
import 'Register.dart';
import 'SignInMethods/GoogleSignIn.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void userLogin() async {
    //show dialog
    loadingAnimation(context);
    //try sign in

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
      Navigator.pop(context);

      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()));
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        message(context, "Invalid login Credentials");
      } else {
        genericErrorMessage(context, e.message.toString());
      }
    } catch (e) {
      genericErrorMessage(context, e.toString());
    }
  }

  //without Firebase
  Future googleSignIn() async {
    //make sure to register your sha1 to google https://console.cloud.google.com/apis/credentials/consent
    loadingAnimation(context);

    try {
      final user = await GoogleSignInApi.login();
      Navigator.pop(context);
      if (user == null) {
        message(context, "Failed to sign In");
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomePage()));
      }
    } catch (e) {
      genericErrorMessage(context, e.toString());
    }
  }
  signInWithGoogleFirebase() async {
    loadingAnimation(context);
    try{
      await FirebaseAuth.instance.signOut();
      print("CurrentUser");
      print(FirebaseAuth.instance.currentUser);

      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
      print("NowUser");
      print(gUser);
      if(gUser != null){
        //obtain auth details from request
        final GoogleSignInAuthentication gAuth = await gUser!.authentication;

        //obtain auth credentials for user
        final credential = GoogleAuthProvider.credential(
          accessToken: gAuth.accessToken,
          idToken: gAuth.idToken,
        );
        return await FirebaseAuth.instance.signInWithCredential(credential);
      }else{
        Navigator.pop(context);
        genericErrorMessage(context, "User Already Signed in");
      }
    }catch (e){
      Navigator.pop(context);
      genericErrorMessage(context, e.toString());
    }
  }

  Future<User?> appleSignInFirebase() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );
    final OAuthProvider oAuthProvider = OAuthProvider("apple.com");
    final AuthCredential authCredential = oAuthProvider.credential(
      idToken: credential.identityToken,
      accessToken: credential.authorizationCode,
    );

    final UserCredential authResult = await FirebaseAuth.instance
        .signInWithCredential(authCredential);

    return authResult.user;

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
                      keyboardType: TextInputType.emailAddress,
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
                    child: SizedBox(
                      width: double.infinity,
                      height: AppSize.s40,
                      child: ElevatedButton(
                        onPressed: () {
                          userLogin();
                        },
                        child: Text(
                          AppString.LOGIN,
                          style: TextStyle(
                            color: ColorManager.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: AppPadding.p8,
                        left: AppPadding.p28,
                        right: AppPadding.p28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgottenPassword()));
                          },
                          child: Text(
                            AppString.forgotPassword,
                            style: Theme.of(context).textTheme.titleSmall,
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: AppPadding.p28, right: AppPadding.p28),
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
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: ColorManager.blue),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: InkWell(
                            onTap: signInWithGoogleFirebase,
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
                      padding: const EdgeInsets.only(top: AppPadding.p20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Not a member ?"),
                          GestureDetector(
                            onTap: widget.onTap,
                            child: Text(
                              AppString.register,
                              style: TextStyle(
                                color: ColorManager.blue,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
