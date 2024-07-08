import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(Function() this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            width: 350,
            color: const Color.fromARGB(183, 255, 255, 255), 
            'assets/images/quiz-logo.png',
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Learn Flutter the fun Way!',
            style: GoogleFonts.oswald(
              letterSpacing: 3.5,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt_rounded),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: startQuiz,
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
