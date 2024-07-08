import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});    // Constructor Function 

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        backgroundColor: const Color.fromARGB(255, 138, 132, 137),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
      ),
      onPressed: onTap,
      child: Text(
        answerText, textAlign: TextAlign.center,),
    );
  }
}
