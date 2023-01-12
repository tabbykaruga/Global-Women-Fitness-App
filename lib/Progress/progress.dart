import 'package:flutter/material.dart';
import '../HomePage.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/workouts/fullbody.png",
                    height: 150,
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.flash_on,
                        color: Color.fromRGBO(255, 129, 151, 1),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "00",
                        style: TextStyle(
                          color: Color.fromRGBO(55, 75, 155, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "WORKOUTS",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.whatshot,
                        color: Color.fromRGBO(255, 129, 151, 1),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "00",
                        style: TextStyle(
                          color: Color.fromRGBO(55, 75, 155, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "CALORIES",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.timer,
                        color: Color.fromRGBO(255, 129, 151, 1),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "00",
                        style: TextStyle(
                          color: Color.fromRGBO(55, 75, 155, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "MINUTES",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                height: 60,
                thickness: 3,
                color: Color.fromRGBO(55, 75, 155, 0.2),
              ),
              Row(
                children: const [
                  Text(
                    "RECENT",
                    style: TextStyle(
                      color: Color.fromRGBO(55, 75, 155, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                //here there should be all the recent.
              ),
              const Divider(
                height: 60,
                thickness: 3,
                color: Color.fromRGBO(55, 75, 155, 0.2),
              ),
              Image.asset("assets/calendar.jpg"),
              const Divider(
                height: 60,
                thickness: 3,
                color: Color.fromRGBO(55, 75, 155, 0.2),
              ),
              Row(
                children: const [
                  Text(
                    "TODAY / MAY 3, 2021",
                    style: TextStyle(
                      color: Color.fromRGBO(55, 75, 155, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                //recent of that day
              ),
              const Divider(
                height: 60,
                thickness: 3,
                color: Color.fromRGBO(55, 75, 155, 0.2),
              ),
              Row(
                children: const [
                  Text(
                    "THIS MONTH",
                    style: TextStyle(
                      color: Color.fromRGBO(55, 75, 155, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                //recent of that month
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


