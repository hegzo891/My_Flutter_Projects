import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(this.text, this.onTap, {super.key});
  String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap,style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.purple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      )
    ) ,child: Text(text, textAlign: TextAlign.center,));
  }
}
