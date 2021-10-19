// ignore_for_file: file_names
import 'package:flutter/material.dart';
import './questions.dart';
import './result.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int quetionIndex;
  final Function gotAnswered;

  Quiz({
    required this.questions,
    required this.gotAnswered,
    required this.quetionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question(
          questions[quetionIndex]['quetionText'] as String,
        ),
        ...(questions[quetionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => gotAnswered(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
