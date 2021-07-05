import 'package:flutter/material.dart';

import 'Questions.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final int qindex;
  final List<Map<String, Object>> questions;
  final Function(int) updat;

  Quiz({
    required this.qindex,
    required this.questions,
    required this.updat,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[qindex]['Question'] as String),
        ...(questions[qindex]['Answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => updat(answer['score'] as int), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
