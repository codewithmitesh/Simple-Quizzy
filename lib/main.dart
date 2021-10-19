// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyCoolApp());
}

class MyCoolApp extends StatefulWidget {
  // MyCoolApp({Key? key}) : super(key: key);

  @override
  State<MyCoolApp> createState() => _MyCoolAppState();
}

class _MyCoolAppState extends State<MyCoolApp> {
  var _quetionIndex = 0;
  int _totalScore = 0;
  final quetions = const [
    {
      'quetionText':
          'Which is Most Popular lenguage or Framework for Backend in current IT industry??',
      'answers': [
        {'text': 'Django', 'score': 18},
        {'text': 'NodeJS', 'score': 20},
        {'text': 'Spring', 'score': 15},
        {'text': 'PHP', 'score': 10},
      ]
    },
    {
      'quetionText': 'Which is The oldest programmming language ?? ',
      'answers': [
        {'text': 'Python', 'score': 18},
        {'text': 'C', 'score': 20},
        {'text': 'Java', 'score': 15},
        {'text': 'Dart', 'score': 10},
      ]
    },
    {
      'quetionText': 'Which is the fastest programming language???',
      'answers': [
        {'text': 'Python', 'score': 18},
        {'text': 'C', 'score': 20},
        {'text': 'Java', 'score': 15},
        {'text': 'Dart', 'score': 10},
      ]
    },
    {
      'quetionText': 'Which is the most popular skill currently??',
      'answers': [
        {'text': 'ML or AI', 'score': 18},
        {'text': 'WebD', 'score': 20},
        {'text': 'AppD', 'score': 15},
        {'text': 'Block Chain', 'score': 10},
      ]
    }
  ];
  void _resetQuiz() {
    setState(() {
      _quetionIndex = 0;
      _totalScore = 0;
    });
  }

  void gotAnswered(int score) {
    _totalScore += score;
    setState(() {
      _quetionIndex++;
    });
    print('Ans Clicked!!!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(' Simple Quizzy '),
        ),
        body: _quetionIndex < quetions.length
            ? Quiz(
                questions: quetions,
                gotAnswered: gotAnswered,
                quetionIndex: _quetionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
