import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  Welcome(this.change,{super.key});
  void Function() change;
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xff491070),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.5,
              child: Image.asset(
                "lib/assets/quiz-logo.png",
                width: 300,
                height: 300,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Text(
              "Learn Flutter the fun way",
              style: GoogleFonts.lato(color: Colors.white, fontSize: 22),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {
                widget.change();
                },
                icon: const Icon(Icons.quiz),
                label: const Text("Start Quiz")),
          ],
        ),
      ),
    );
  }
}
// https://www.surveymonkey.com/r/septattend