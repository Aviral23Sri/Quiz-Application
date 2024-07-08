import 'package:flutter/material.dart';
import 'package:quiz_appication/data/questions.dart';
import 'package:quiz_appication/questions_summary.dart';
// import 'package:quiz_appication/quiz.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override

  
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQues = questions.length;
    final numOfcurrectQues = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }
    ).length;

   

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            "You Answerd $numOfcurrectQues Questions out of $totalQues Questions Crrectly!",
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          QuestionsSummary(summaryData: summaryData),
          const SizedBox(
            height: 70,
          ),
          TextButton.icon(
            icon: Icon(Icons.refresh_sharp),
            style:TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 63, 149, 186),
              foregroundColor: Colors.black
            ),
            onPressed: onRestart,
            label: const Text('Restart Quiz'),
          )
        ]),
      ),
    );
  }
}
