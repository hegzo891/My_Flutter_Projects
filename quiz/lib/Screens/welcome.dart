import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff491070),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "lib/assets/quiz-logo.png",
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Learn Flutter the fun way",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Start Quiz")),
          ],
        ),
      ),
    );
  }
}
