import 'package:flutter/material.dart';
import 'package:quiz/Screens/results.dart';

import 'Screens/questions.dart';
import 'Screens/welcome.dart';
import 'data/questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  late Widget current;
  @override
  void initState() {
    current = Welcome(toggleScreen);
    super.initState();
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        current = const Results();
        selectedAnswers = [];
      });
    }
  }

  void toggleScreen() {
    setState(() {
      current = Questions(
        chooseAnswers,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: current,
    );
  }
}
