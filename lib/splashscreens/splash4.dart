import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/splashscreens/splashpages.dart';

import '../Auth/AuthPage.dart';

class Splash4 extends StatelessWidget {
  const Splash4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(
              height: 200,
            ),
            const Image(
              image: AssetImage('assets/tracker.png'),
              height: 300.0,
              width: 300.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Center(
                child: Text(
                  'Track Your Progress.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // fontFamily: 'OpenSans',
                    fontSize: 20,
                    color: Color.fromRGBO(55, 75, 155, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SplashPages()),
                        );
                      },
                      child: Container(
                        height: 16.0,
                        width: 45.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 129, 151, 0.3),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SplashPages2()),
                        );
                      },
                      child: Container(
                        height: 16.0,
                        width: 45.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 129, 151, 0.3),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SplashPages3()),
                        );
                      },
                      child: Container(
                        height: 16.0,
                        width: 45.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 129, 151, 0.3),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 16.0,
                      width: 45.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 129, 151, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 20,
                        color: Color.fromRGBO(55, 75, 155, 1),
                      ),
                      Text(
                        '   . . . Swipe . . .',
                        style: TextStyle(
                          fontSize: 15,
                          // fontFamily: 'OpenSans',
                          color: Color.fromRGBO(55, 75, 155, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(
          left: 320.0,
        ),
        child: FloatingActionButton.extended(
            label: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(55, 75, 155, 1),
                    Color.fromRGBO(255, 129, 151, 1)
                  ],
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(20, 9, 10, 8),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        'NEXT',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: const Color(0x00000000),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AuthPage()),
              );
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
