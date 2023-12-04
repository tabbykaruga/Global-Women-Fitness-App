import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/Profile/profile.dart';
import 'package:gobal_women_fitness_app/Settings/settings.dart';
import 'package:gobal_women_fitness_app/Workouts/workouts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'Progress/progress.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  late final GoogleSignInAccount user;
  final List<Widget> _widgetOptions;

  _HomePageState() : _widgetOptions = <Widget>[
    const Workouts(),
    const ProgressPage(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Image(
          image: AssetImage('assets/logo.png'),
        ),
        leadingWidth: 100.0,
        shadowColor: const Color.fromRGBO(55, 75, 155, 1),
        toolbarHeight: 65,
        title: const Text(
          "Global Women",
          style: TextStyle(
            fontSize: 30,
            color: Color.fromRGBO(55, 75, 155, 1),
          ),
        ),
        titleSpacing: -10.0,
        backgroundColor: Colors.pink[50],
        actions:  [
          IconButton(
            icon:  const Icon(
              Icons.settings,
              size: 30,
            ),
            color:  const Color.fromRGBO(55, 75, 155, 1),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  const Settings()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.fitness_center,
              size: 40,
              color:Color.fromRGBO(55, 75, 155, 1)
            ),
            activeIcon: const Icon(
                Icons.fitness_center,
                size: 45,
                color: Color.fromRGBO(255, 129, 151, 1)
            ),
            label: 'Workout',
            backgroundColor: Colors.pink[50],
          ),

          BottomNavigationBarItem(
            icon: const Icon(
                Icons.assignment_turned_in_rounded,
                size: 40,
                color:Color.fromRGBO(55, 75, 155, 1)
            ),
              activeIcon: const Icon(
                  Icons.assignment_turned_in_rounded,
                  size: 45,
                  color: Color.fromRGBO(255, 129, 151, 1)
              ),
              label: 'Progress',
            backgroundColor: Colors.pink[50],
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.account_circle_sharp,
              size: 40,
              color:Color.fromRGBO(55, 75, 155, 1),
            ),
            activeIcon: const Icon(
                Icons.account_circle_sharp,
                size: 45,
                color: Color.fromRGBO(255, 129, 151, 1)
            ),
            label: 'Profile',
            backgroundColor: Colors.pink[50],
          ),
        ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromRGBO(255, 129, 151, 1),
          iconSize: 50,
          onTap: _onItemTapped,
          unselectedItemColor: const Color.fromRGBO(55, 75, 155, 1),
          unselectedLabelStyle :const TextStyle(
              color: Color.fromRGBO(55, 75, 155, 1),
              fontSize: 20
          ),
          elevation: 5
      ),
    );
  }
}
