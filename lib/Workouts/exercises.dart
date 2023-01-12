import 'package:flutter/material.dart';

class Exercises extends StatefulWidget {
  const Exercises({Key? key}) : super(key: key);

  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {

  bool ex1 = false;
  bool ex2 = false;
  bool ex3 = false;
  bool ex4 = false;
  bool ex5 = false;
  bool ex6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color.fromRGBO(55, 75, 155, 1),
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(55, 75, 155, 1),
        ),
        backgroundColor: Colors.pink[50],
        title: const Text(
          "Workout Name",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(55, 75, 155, 1),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                        blurRadius: 4.0,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: ex1,
                          onChanged: (value) =>
                          {
                            setState(() {
                              ex1 = value!;
                            }),
                          },
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Exercise 1 Name",
                              style: TextStyle(
                                color: Color.fromRGBO(55, 75, 155, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("X 10")
                          ],
                        ),
                        Image.asset(
                          "assets/workouts/lunges.jpg",
                          height: 120,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                        blurRadius: 4.0,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: ex2,
                          onChanged: (value) => {
                            setState(() {
                              ex2 = value!;
                            }),
                          },
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Exercise 2 Name",
                              style: TextStyle(
                                color: Color.fromRGBO(55, 75, 155, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("X 10")
                          ],
                        ),
                        Image.asset(
                          "assets/workouts/lunges.jpg",
                          height: 120,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                        blurRadius: 4.0,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: ex3,
                          onChanged: (value) => {
                            setState(() {
                              ex3 = value!;
                            }),
                          },
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Exercise 3 Name",
                              style: TextStyle(
                                color: Color.fromRGBO(55, 75, 155, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("X 10")
                          ],
                        ),
                        Image.asset(
                          "assets/workouts/lunges.jpg",
                          height: 120,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                        blurRadius: 4.0,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: ex4,
                          onChanged: (value) => {
                            setState(() {
                              ex4 = value!;
                            }),
                          },
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Exercise 4 Name",
                              style: TextStyle(
                                color: Color.fromRGBO(55, 75, 155, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("X 10")
                          ],
                        ),
                        Image.asset(
                          "assets/workouts/lunges.jpg",
                          height: 120,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                        blurRadius: 4.0,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: ex5,
                          onChanged: (value) => {
                            setState(() {
                              ex5 = value!;
                            }),
                          },
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Exercise 5 Name",
                              style: TextStyle(
                                color: Color.fromRGBO(55, 75, 155, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("X 10")
                          ],
                        ),
                        Image.asset(
                          "assets/workouts/lunges.jpg",
                          height: 120,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          1.0,
                          2.0,
                        ),
                        blurRadius: 4.0,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          value: ex6,
                          onChanged: (value) => {
                            setState(() {
                              ex6 = value!;
                            }),
                          },
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Exercise 6 Name",
                              style: TextStyle(
                                color: Color.fromRGBO(55, 75, 155, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("X 10")
                          ],
                        ),
                        Image.asset(
                          "assets/workouts/lunges.jpg",
                          height: 120,
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

