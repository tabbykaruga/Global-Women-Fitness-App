import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/splashscreens/splashpages.dart';
import '../Auth/AuthPage.dart';
import '../HomePage.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 30, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AuthPage()),
                      );
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 15,
                        // fontFamily: 'Arial',
                        color: Color.fromRGBO(55, 75, 155, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Image(
              image: AssetImage('assets/workout.png'),
              height: 300.0,
              width: 300.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Center(
                child: Text(
                  'Get in touch with your inner self.',
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
                  //first circle
                  // Padding(
                  //   padding: const EdgeInsets.all(16.0),
                  //   child: Icon(
                  //     Icons.circle,
                  //     size: 20,
                  //     color: Color.fromRGBO(255, 129, 151, 1),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
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

                  //second circle
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SplashPages2()),
                        );
                      },
                      // child: Icon(
                      //   Icons.circle,
                      //   size: 20,
                      //   color: Color.fromRGBO(255, 129, 151, 0.3),
                      // ),
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

                  //third circle
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SplashPages3()),
                        );
                      },
                      // child: Icon(
                      //   Icons.circle,
                      //   size: 20,
                      //   color: Color.fromRGBO(255, 129, 151, 0.3),
                      // ),
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

                  //forth circle
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SplashPages4()),
                        );
                      },
                      // child: Icon(
                      //   Icons.circle,
                      //   size: 20,
                      //   color: Color.fromRGBO(255, 129, 151, 0.3),
                      // ),
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
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: const [
                      Text(
                        '   Swipe . . .   ',
                        style: TextStyle(
                          fontSize: 15,
                          // fontFamily: 'Arial',
                          color: Color.fromRGBO(55, 75, 155, 1),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                        color: Color.fromRGBO(55, 75, 155, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
