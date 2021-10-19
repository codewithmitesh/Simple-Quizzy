// ignore_for_file: file_names
//  ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resText;
    var final_Score = resultScore;

    if (resultScore > 4.8) {
      resText = 'You are awasome you did it  with score of $resultScore ';
    } else {
      resText = 'You are good but need practice!!! score of $resultScore ';
    }

    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
            color: Colors.red,
            onPressed: resetHandler,
            child: Text('Restart the Quiz!!!!')),
      ],
    );
  }
}
