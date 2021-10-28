import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

   Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Questions(
              questions[questionIndex]['questionText'] as String, // as String is same as:  ?.toString() ?? '' if you're in sdk vere 2.12
            ),
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
            return Answers(() => answerQuestion(answer['score']), answer['text'] as String);
          }).toList() // ... add nested list into list
        ],
      ),
    );
  }
}
