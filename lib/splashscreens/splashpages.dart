import 'package:flutter/material.dart';
import 'package:gobal_women_fitness_app/splashscreens/splash1.dart';
import 'package:gobal_women_fitness_app/splashscreens/splash2.dart';
import 'package:gobal_women_fitness_app/splashscreens/splash3.dart';
import 'package:gobal_women_fitness_app/splashscreens/splash4.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({Key? key}) : super(key: key);

  @override
  State<SplashPages> createState() => _SplashPagesState();
}
class _SplashPagesState extends State<SplashPages> {

  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        Splash1(),
        Splash2(),
        Splash3(),
        Splash4(),
      ],
    );
  }
}

class SplashPages2 extends StatefulWidget {
  const SplashPages2({Key? key}) : super(key: key);

  @override
  State<SplashPages2> createState() => _SplashPagesState2();
}
class _SplashPagesState2 extends State<SplashPages2> {

  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        Splash1(),
        Splash2(),
        Splash3(),
        Splash4(),
      ],
    );
  }
}

class SplashPages3 extends StatefulWidget {
  const SplashPages3({Key? key}) : super(key: key);

  @override
  State<SplashPages3> createState() => _SplashPagesState3();
}
class _SplashPagesState3 extends State<SplashPages3> {

  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        Splash1(),
        Splash2(),
        Splash3(),
        Splash4(),
      ],
    );
  }
}

class SplashPages4 extends StatefulWidget {
  const SplashPages4({Key? key}) : super(key: key);

  @override
  State<SplashPages4> createState() => _SplashPagesState4();
}
class _SplashPagesState4 extends State<SplashPages4> {

  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        Splash1(),
        Splash2(),
        Splash3(),
        Splash4(),
      ],
    );
  }
}





