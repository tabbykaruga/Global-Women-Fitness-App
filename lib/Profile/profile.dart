import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/Settings/settings.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../HomePage.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);
//
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final user = FirebaseAuth.instance.currentUser;
  var emailAddress =FirebaseAuth.instance.currentUser!.email;
  var username =FirebaseAuth.instance.currentUser!.displayName;
  var photoURL =FirebaseAuth.instance.currentUser!.photoURL;
  var fallbackImageURL = 'https://example.com/dummy-image.png';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: photoURL != null && photoURL!.isNotEmpty
                        ? NetworkImage(photoURL!)
                        : NetworkImage(fallbackImageURL),
                  ),
                  )
                ),
              Text(
                username!,
                style: const TextStyle(
                  color: Color.fromRGBO(55, 75, 155, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                emailAddress!,
                style: const TextStyle(
                  color: Color.fromRGBO(55, 75, 155, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(
                height: 40,
                thickness: 3,
                indent: 50,
                endIndent: 50,
                color: Color.fromRGBO(255, 129, 151, 0.3),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.edit,
                    size: 20,
                    color: Color.fromRGBO(55, 75, 155, 0.7),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "EDIT",
                    style: TextStyle(
                      color: Color.fromRGBO(55, 75, 155, 0.7),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0),
                    ),
                    color: Colors.white70,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          3.0,
                          3.0,
                        ),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '5\'4"',
                                  style: TextStyle(
                                    color: Color.fromRGBO(55, 75, 155, 1),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Height (ft.)',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                              child: VerticalDivider(
                                thickness: 3,
                                color: Color.fromRGBO(55, 75, 155, 0.2),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  '55',
                                  style: TextStyle(
                                    color: Color.fromRGBO(55, 75, 155, 1),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Weight (kg.)',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0),
                    ),
                    color: Colors.white70,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          3.0,
                          3.0,
                        ),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Calories Burned (Estimated)",
                          style: TextStyle(
                            color: Color.fromRGBO(55, 75, 155, 1),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Calories",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Image.asset("assets/workouts/calories.jpg"),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0),
                    ),
                    color: Colors.white70,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          3.0,
                          3.0,
                        ),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Workouts Done",
                          style: TextStyle(
                            color: Color.fromRGBO(55, 75, 155, 1),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "In Number",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Image.asset("assets/workouts/exercises.jpg"),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 50,
                thickness: 3,
                color: Color.fromRGBO(55, 75, 155, 0.2),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    child: const Row(
                      children: [
                        Icon(
                          Icons.settings,
                          size: 25,
                          color: Color.fromRGBO(55, 75, 155, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(
                            color: Color.fromRGBO(55, 75, 155, 1),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    child: const Row(
                      children: [
                        Icon(
                          Icons.replay,
                          size: 25,
                          color: Color.fromRGBO(55, 75, 155, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Reset All",
                          style: TextStyle(
                            color: Color.fromRGBO(55, 75, 155, 1),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          backgroundColor: Colors.white,
                          title: const Text(
                            "Confirmation",
                            textAlign: TextAlign.center,
                          ),

                          titleTextStyle: const TextStyle(
                              color: Color.fromRGBO(55, 75, 155, 1),
                              // color: Colors.white,
                              fontSize: 25,
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w900),
                          titlePadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          content: const Text(
                            "Are you sure you want to reset all your records?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(55, 75, 155, 1),
                              fontFamily: "OpenSans",
                            ),
                          ),
                          contentPadding: const EdgeInsets.fromLTRB(30, 20, 30, 30),
                          actions: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  163, 22, 33, 1),
                                              offset: Offset(
                                                1.0,
                                                2.0,
                                              ),
                                              blurRadius: 4.0,
                                              spreadRadius: 0.5,
                                            ),
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  163, 22, 33, 1),
                                              offset: Offset(
                                                -1.0,
                                                -1.0,
                                              ),
                                              blurRadius: 4.0,
                                              spreadRadius: 0.5,
                                            ),
                                          ],
                                        ),
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: const Color.fromRGBO(
                                                163, 22, 33, 1),
                                          ),
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.0,
                                                vertical: 8.0),
                                            child: Text(
                                              "Reset",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.white70,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  55, 75, 155, 1),
                                              offset: Offset(
                                                1.0,
                                                2.0,
                                              ),
                                              blurRadius: 4.0,
                                              spreadRadius: 0.5,
                                            ),
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  55, 75, 155, 1),
                                              offset: Offset(
                                                -1.0,
                                                -1.0,
                                              ),
                                              blurRadius: 4.0,
                                              spreadRadius: 0.5,
                                            ),
                                          ],
                                        ),
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: const Color.fromRGBO(
                                                55, 75, 155, 1),
                                          ),
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.0,
                                                vertical: 8.0),
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 45,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

