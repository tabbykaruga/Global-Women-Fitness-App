import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/Auth/LoginOrRegister.dart';
import 'package:gobal_women_fitness_app/presentation/StateManager.dart';
import '../presentation/ColorManager.dart';
import '../presentation/Padding.dart';
import '../presentation/Strings.dart';

class ForgottenPassword extends StatefulWidget {
  const ForgottenPassword({Key? key}) : super(key: key);

  @override
  State<ForgottenPassword> createState() => _ForgottenPasswordState();
}

class _ForgottenPasswordState extends State<ForgottenPassword> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future googleResetPassword() async {
    final emailAddress = _emailController.text.trim();
    try {
      // final user =
      //     await FirebaseAuth.instance.fetchSignInMethodsForEmail(emailAddress);
      // print(user);
      // if (user.isEmpty) {
      //   // The email address is not associated with an existing account.
      //   message(context, 'No account is registered with $emailAddress');
      // } else {
      //   // An account with this email exists; send the password reset email.
      //   await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress);
      //   message(context, 'An email has been sent to $emailAddress');
      // }

      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress);
      message(context, 'An email has been sent to $emailAddress. If you have not received an email kindly check the email formart again!!');

    } on FirebaseAuthException catch (e) {
      message(context, e.message.toString());
    } catch (e) {
      genericErrorMessage(context, e.toString());
    }
  }

  appleResetPassword() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/logo.png'),
                  height: 150,
                  width: 200,
                ),
                const SizedBox(height: AppSize.s28),
                Padding(
                  padding: const EdgeInsets.only(
                      left: AppPadding.p28, right: AppPadding.p28),
                  child: TextField(
                    // keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorManager.darkGrey)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorManager.darkPrimary),
                      ),
                      hintText: AppString.email,
                    ),
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
                      onPressed: googleResetPassword,
                      child: Text(
                        AppString.resetPassword,
                        style: TextStyle(
                          color: ColorManager.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppPadding.p20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Did not receive an email ? "),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          AppString.emailNotSent,
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
                const SizedBox(height: AppSize.s28),
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
                  padding: const EdgeInsets.only(top: 40, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorManager.blue),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: InkWell(
                          onTap: googleResetPassword,
                          child: const Image(
                            image: AssetImage('assets/google.png'),
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorManager.blue),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: InkWell(
                          onTap: appleResetPassword,
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
                      const Text("Back to login "),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const LoginOrRegisterPage()),
                          );
                        },
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
    );
  }
}
