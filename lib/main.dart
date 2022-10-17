// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:task/home.dart';

void main() {
  runApp(const TaskiApp());
}

class TaskiApp extends StatefulWidget {
  const TaskiApp({super.key});

  @override
  State<TaskiApp> createState() => _TaskiAppState();
}

class _TaskiAppState extends State<TaskiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(children: [
          Image.asset(
            'assets/dart.png',
            height: 90,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
        ]),
        nextScreen: const Home(),
        splashIconSize: 150,
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.rightToLeft,
        animationDuration: const Duration(seconds: 1),
        backgroundColor: const Color.fromARGB(255, 62, 55, 255),
        );
        
  }
}
