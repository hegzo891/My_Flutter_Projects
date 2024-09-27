import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/widgets/answer_button.dart';

import '../data/questions.dart';

class Questions extends StatefulWidget {
  Questions(this.putAnswers, {super.key});
  void Function(String answer) putAnswers;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentScreen = 0;
  void inc(String answer) {
    widget.putAnswers(answer);
    setState(() {
      currentScreen++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final current = questions[currentScreen];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xff491070),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  current.text,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                ...current.getShuffle().map((ans) {
                  return AnswerButton(ans, () {
                    inc(ans);
                  });
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
