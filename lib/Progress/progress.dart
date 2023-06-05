import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../HomePage.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var date = DateTime.now();
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
                  const Column(
                    children: [
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
                  const Column(
                    children: [
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
                  const Column(
                    children: [
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
              const Row(
                children: [
                  Text(
                    "BMI CALCULATOR",//https://www.kindacode.com/article/write-a-simple-bmi-calculator-with-flutter/
                    style: TextStyle(
                      color: Color.fromRGBO(55, 75, 155, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'KG',
                      icon: Icon(Icons.monitor_weight_outlined),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'CM',
                      icon: Icon(Icons.height),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FloatingActionButton.extended(
                    label: const Text("CALCULATE"),
                    onPressed: () {},
                    icon: const Icon(Icons.calculate),
                    backgroundColor: const Color.fromRGBO(55, 75, 155, 1),
                  ),
                ],
              ),
              const Divider(
                height: 60,
                thickness: 3,
                color: Color.fromRGBO(55, 75, 155, 0.2),
              ),
              TableCalendar(
                firstDay: DateTime.utc(date.year, 01, 01),
                lastDay: DateTime.utc(date.year, 12, 31),
                focusedDay: date,
                calendarFormat: CalendarFormat.month,
                calendarStyle: CalendarStyle(
                  isTodayHighlighted: true,
                  todayDecoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 129, 151, 1)),
                  selectedDecoration:
                      BoxDecoration(color: Theme.of(context).primaryColor),
                ),
                headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonDecoration: BoxDecoration(
                    color: const Color.fromRGBO(55, 75, 155, 1),
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  formatButtonTextStyle: const TextStyle(color: Colors.white),
                  formatButtonShowsNext: false,
                ),
                startingDayOfWeek: StartingDayOfWeek.monday,
                onDaySelected: (date, events) {
                  print(date.toUtc());
                },
                calendarBuilders: CalendarBuilders(
                  selectedBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Text(
                      date.day.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  todayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 129, 151, 1),
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Text(
                      date.day.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 60,
                thickness: 3,
                color: Color.fromRGBO(55, 75, 155, 0.2),
              ),
              const Row(
                children: [
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
              const Row(
                children: [
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
