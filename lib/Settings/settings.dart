import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/Auth/Login.dart';
import 'package:gobal_women_fitness_app/Auth/LoginOrRegister.dart';
import 'package:gobal_women_fitness_app/presentation/ColorManager.dart';

import '../presentation/StateManager.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  bool _reminder = true;
  bool _receivenoti = true;
  bool _receiveappup = false;
  bool _googlefit = false;

  Future usersignOut() async {

    loadingAnimation(context);
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.pop(context);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginOrRegisterPage()));
      // Sign-out successful.

    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      genericErrorMessage(context, e.toString());
    } catch (e) {
      Navigator.pop(context);
      genericErrorMessage(context, e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   shadowColor: Color.fromRGBO(55, 75, 155, 1),
      //   iconTheme: IconThemeData(
      //     color: Color.fromRGBO(55, 75, 155, 1),
      //   ),
      //   backgroundColor: Colors.pink[50],
      //   title: Text(
      //     "SETTINGS",
      //     style: TextStyle(
      //       fontSize: 24,
      //       fontFamily: "Arail",
      //       fontWeight: FontWeight.bold,
      //       color: Color.fromRGBO(55, 75, 155, 1),
      //     ),
      //   ),
      // ),
      body: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 30,
                  color: Color.fromRGBO(255, 129, 151, 1),
                ),
                title: Text(
                  "General Settings",
                  style: TextStyle(
                    color: Color.fromRGBO(55, 75, 155, 1),
                    fontSize: 20,
                    // decoration: TextDecoration.underline,
                    // fontFamily: "OpenSans",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                color: ColorManager.blue,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.settings_brightness,
                          size: 30,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Change Theme",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        height: 5,
                        thickness: 2,
                        color: Color.fromRGBO(255, 129, 151, 0.3),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.font_download_outlined,
                          size: 28,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Font Size",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        height: 5,
                        thickness: 2,
                        color: Color.fromRGBO(255, 129, 151, 0.3),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.language,
                          size: 30,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Language Options",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        height: 5,
                        thickness: 2,
                        color: Color.fromRGBO(255, 129, 151, 0.3),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.mic,
                          size: 30,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Voice Language",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        height: 5,
                        thickness: 2,
                        color: Color.fromRGBO(255, 129, 151, 0.3),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.tune,
                          size: 28,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Preferences",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const ListTile(
                leading: Icon(
                  Icons.notifications_active,
                  size: 30,
                  color: Color.fromRGBO(255, 129, 151, 1),
                ),
                title: Text(
                  "Notification Settings",
                  style: TextStyle(
                    color: Color.fromRGBO(55, 75, 155, 1),
                    fontSize: 20,
                    // decoration: TextDecoration.underline,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                elevation: 4,
                color: ColorManager.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchListTile(
                        activeColor: const Color.fromRGBO(255, 129, 151, 1),
                        value: _reminder,
                        title: const Text(
                          "Reminder",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        onChanged: (bool value) {
                          setState(() {
                            _reminder = value;
                          });
                        },
                        secondary: const Icon(
                          Icons.alarm_on,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 1,
                        color: Color.fromRGBO(255, 129, 151, 0.3),
                      ),
                      SwitchListTile(
                        activeColor: const Color.fromRGBO(255, 129, 151, 1),
                        value: _receivenoti,
                        title: const Text(
                          "Receive Notifications",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        onChanged: (bool value) {
                          setState(() {
                            _receivenoti = value;
                          });
                        },
                        secondary: const Icon(
                          Icons.notification_important_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const Divider(
                        height: 2,
                        thickness: 1,
                        color: Color.fromRGBO(255, 129, 151, 0.3),
                      ),
                      SwitchListTile(
                        activeColor: Color.fromRGBO(255, 129, 151, 1),
                        value: _receiveappup,
                        title: const Text(
                          "Receive App Updates",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        onChanged: (bool value) {
                          setState(() {
                            _receiveappup = value;
                          });
                        },
                        secondary: const Icon(
                          Icons.update,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const ListTile(
                leading: Icon(
                  Icons.favorite,
                  size: 30,
                  color: Color.fromRGBO(255, 129, 151, 1),
                ),
                title: Text(
                  "Support Be Fit",
                  style: TextStyle(
                    color: Color.fromRGBO(55, 75, 155, 1),
                    fontSize: 20,
                    // decoration: TextDecoration.underline,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                elevation: 4,
                color: ColorManager.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.star_outline_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Rate Be Fit",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        height: 5,
                        thickness: 2,
                        color: Color.fromRGBO(255, 129, 151, 0.3),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.mail_outline_outlined,
                          size: 28,
                          color: Colors.white,
                        ),
                        title: Text(
                          "FeedBack",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        height: 5,
                        thickness: 2,
                        color: Color.fromRGBO(255, 129, 151, 0.3),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.book_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        height: 5,
                        thickness: 2,
                        color: Color.fromRGBO(255, 129, 151, 0.3),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.bookmark_border,
                          size: 30,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Help and Documentation",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const ListTile(
                leading: Icon(
                  Icons.sync,
                  size: 30,
                  color: Color.fromRGBO(255, 129, 151, 1),
                ),
                title: Text(
                  "Sync and Store",
                  style: TextStyle(
                    color: Color.fromRGBO(55, 75, 155, 1),
                    fontSize: 20,
                    // decoration: TextDecoration.underline,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                elevation: 4,
                color: ColorManager.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchListTile(
                        activeColor: Color.fromRGBO(255, 129, 151, 1),
                        value: _googlefit,
                        title: const Text(
                          "Sync to Google Fit",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        onChanged: (bool value) {
                          setState(() {
                            _googlefit = value;
                          });
                        },
                        secondary: const Icon(
                          Icons.cloud_done_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.logout,
                          size: 30,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Log Out",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                          ),
                        ),
                        onTap: usersignOut,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Version 1.0.0",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "OpenSans",
                      color: Colors.black26,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

