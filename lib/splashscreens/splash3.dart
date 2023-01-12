import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/splashscreens/splashpages.dart';
import '../HomePage.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

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
                        MaterialPageRoute(builder: (context) => const HomePage()),
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
              image: AssetImage('assets/data.png'),
              height: 300.0,
              width: 300.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Center(
                child: Text(
                  'Enter your details and make Profile.',
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
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SplashPages4()),
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
                      Icon(
                        Icons.arrow_back,
                        size: 20,
                        color: Color.fromRGBO(55, 75, 155, 1),
                      ),
                      Text(
                        '   . . . Swipe . . .   ',
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
