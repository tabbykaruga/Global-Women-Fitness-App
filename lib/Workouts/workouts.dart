import 'package:flutter/material.dart';
import '../HomePage.dart';
import 'exercises.dart';


class Workouts extends StatelessWidget {
  const Workouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 20.0),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Exercises()),
                  ),
                },
                child: Card(
                  elevation: 5,
                  shadowColor: const Color.fromRGBO(55, 75, 155, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  color: const Color.fromRGBO(55, 75, 155, 1),
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/workouts/fullbody.png"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.0),
                              topLeft: Radius.circular(16.0)),
                        ),
                        height: 200,
                        width: double.infinity,
                      ),
                      ListTile(
                        title: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "FULL BODY WORKOUT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 15,
                                color: Colors.white.withOpacity(0.7),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "12 Mins",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Exercises()),
                  ),
                },
                child: Card(
                  elevation: 5,
                  shadowColor: const Color.fromRGBO(55, 75, 155, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  color: const Color.fromRGBO(55, 75, 155, 1),
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/workouts/bar.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.0),
                              topLeft: Radius.circular(16.0)),
                        ),
                        height: 200,
                        width: double.infinity,
                      ),
                      ListTile(
                        title: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "BICEPS WORKOUT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 15,
                                color: Colors.white.withOpacity(0.7),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "12 Mins",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Exercises()),
                  ),
                },
                child: Card(
                  elevation: 5,
                  shadowColor: const Color.fromRGBO(55, 75, 155, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  color: const Color.fromRGBO(55, 75, 155, 1),
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/workouts/back.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.0),
                              topLeft: Radius.circular(16.0)),
                        ),
                        height: 200,
                        width: double.infinity,
                      ),
                      ListTile(
                        title: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "BACK WORKOUT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 15,
                                color: Colors.white.withOpacity(0.7),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "12 Mins",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Exercises()),
                  ),
                },
                child: Card(
                  elevation: 5,
                  shadowColor:const Color.fromRGBO(55, 75, 155, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  color: const Color.fromRGBO(55, 75, 155, 1),
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/workouts/arm.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.0),
                              topLeft: Radius.circular(16.0)),
                        ),
                        height: 200,
                        width: double.infinity,
                      ),
                      ListTile(
                        title: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "SHOULDER WORKOUT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 15,
                                color: Colors.white.withOpacity(0.7),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "12 Mins",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Exercises()),
                  ),
                },
                child: Card(
                  elevation: 5,
                  shadowColor: const Color.fromRGBO(55, 75, 155, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  color: const Color.fromRGBO(55, 75, 155, 1),
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/workouts/legs.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.0),
                              topLeft: Radius.circular(16.0)),
                        ),
                        height: 200,
                        width: double.infinity,
                      ),
                      ListTile(
                        title: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "LEGS WORKOUT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 15,
                                color: Colors.white.withOpacity(0.7),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "12 Mins",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Exercises()),
                  ),
                },
                child: Card(
                  elevation: 5,
                  shadowColor: const Color.fromRGBO(55, 75, 155, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  color: const Color.fromRGBO(55, 75, 155, 1),
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/workouts/abs.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.0),
                              topLeft: Radius.circular(16.0)),
                        ),
                        height: 200,
                        width: double.infinity,
                      ),
                      ListTile(
                        title: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "AB WORKOUT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 15,
                                color: Colors.white.withOpacity(0.7),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "12 Mins",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Exercises()),
                  ),
                },
                child: Card(
                  elevation: 5,
                  shadowColor: const Color.fromRGBO(55, 75, 155, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  color: const Color.fromRGBO(55, 75, 155, 1),
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/workouts/squats.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.0),
                              topLeft: Radius.circular(16.0)),
                        ),
                        height: 200,
                        width: double.infinity,
                      ),
                      ListTile(
                        title: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text(
                            "BUTT WORKOUT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 15,
                                color: Colors.white.withOpacity(0.7),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "12 Mins",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 15,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
