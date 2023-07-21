import 'package:flutter/material.dart';
import 'package:flutter_expand_view/expanded_collapse_right_widget.dart';
import 'package:table_calendar/table_calendar.dart';
import '../HomePage.dart';
import '../resources/AssetsManager.dart';
import '../resources/model/ColorManager.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({Key? key}) : super(key: key);

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  var date = DateTime.now();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  double? _bmi;
  String _message = 'Please enter your height an weight';

  void _calculate() {
    final double? height = double.tryParse(_heightController.value.text);
    final double? weight = double.tryParse(_weightController.value.text);

    // Check if the inputs are valid
    if (height == null || height <= 0 || weight == null || weight <= 0) {
      setState(() {
        _message = "Your height and weigh must be positive numbers";
      });
      return;
    }

    setState(() {
      _bmi = weight / (height * height);
      if (_bmi! < 18.5) {
        _message = "UNDERWEIGHT";
      } else if (_bmi! < 25) {
        _message = 'NORMAL';
      } else if (_bmi! < 30) {
        _message = 'OVERWEIGHT';
      } else {
        _message = 'OBESE';
      }
    });
  }

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
                    WorkOutAssets.progressBody,
                    height: 150,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.flash_on,
                        color: ColorManager.primary,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "00",
                        style: TextStyle(
                          color: ColorManager.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
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
                    children: [
                      Icon(
                        Icons.whatshot,
                        color: ColorManager.primary,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "00",
                        style: TextStyle(
                          color: ColorManager.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
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
                    children: [
                      Icon(
                        Icons.timer,
                        color: ColorManager.primary,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "00",
                        style: TextStyle(
                          color: ColorManager.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
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
              Divider(
                height: 60,
                thickness: 3,
                color: ColorManager.lightBlue,
              ),
              TableCalendar(
                firstDay: DateTime.utc(date.year, 01, 01),
                lastDay: DateTime.utc(date.year, 12, 31),
                focusedDay: date,
                calendarFormat: CalendarFormat.month,
                calendarStyle: CalendarStyle(
                  isTodayHighlighted: true,
                  todayDecoration: BoxDecoration(color: ColorManager.primary),
                  selectedDecoration:
                      BoxDecoration(color: Theme.of(context).primaryColor),
                ),
                headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonDecoration: BoxDecoration(
                    color: ColorManager.blue,
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  formatButtonTextStyle: TextStyle(color: ColorManager.white),
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
                      style: TextStyle(color: ColorManager.white),
                    ),
                  ),
                  todayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: ColorManager.primary,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: ColorManager.white),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 60,
                thickness: 3,
                color: ColorManager.lightBlue,
              ),
              ExpansionTile(
                title: Text('BMI CALCULATOR ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: ColorManager.blue),
                ),
                children: <Widget>[
                  Builder(
                    builder: (BuildContext context) {
                      return Container(
                        padding: const EdgeInsets.all(24),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            TextField(
                              keyboardType:
                              const TextInputType.numberWithOptions(decimal: true),
                              decoration: const InputDecoration(
                                  icon: Icon(Icons.height_outlined),
                                  labelText: 'Height (M)'),
                              controller: _heightController,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            TextField(
                              keyboardType:
                              const TextInputType.numberWithOptions(decimal: true),
                              decoration: const InputDecoration(
                                icon: Icon(Icons.monitor_weight_outlined),
                                labelText: 'Weight (KG)',
                              ),
                              controller: _weightController,
                            ),
                            ElevatedButton(
                              onPressed: _calculate,
                              child: const Text('Calculate'),
                            ),
                            Text(
                              _bmi == null ? 'No Result' : _bmi!.toStringAsFixed(2),
                              style: TextStyle(fontSize: 25, color: ColorManager.blue),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              _message,
                              textAlign: TextAlign.center,
                            )
                            // FloatingActionButton.extended(
                            //   label: const Text("CALCULATE"),
                            //   onPressed: () {},
                            //   icon: const Icon(Icons.calculate),
                            //   backgroundColor: const Color.fromRGBO(55, 75, 155, 1),
                            // ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
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
