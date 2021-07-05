import 'package:flutter/material.dart';

import 'package:lets_test_app/Quiz.dart';
import 'package:lets_test_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  int _totalScore = 0;

  void _update(int score) {
    _totalScore += score;
    setState(() {
      _index = _index + 1;
    });
  }

  void _reset() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _question = [
      {
        'Question': "What is fav color?",
        'Answers': [
          {'text': 'Red', 'score': 15},
          {'text': 'Black', 'score': 5},
          {'text': 'Yellow', 'score': 10},
          {'text': 'Blue', 'score': 20},
        ],
      },
      {
        'Question': "What is fav time of day?",
        'Answers': [
          {'text': 'Morning', 'score': 5},
          {'text': 'Night', 'score': 20},
          {'text': 'Evening', 'score': 15},
          {'text': 'Afternoon', 'score': 10},
        ],
      },
      {
        'Question': "What is fav food?",
        'Answers': [
          {'text': 'Pasta', 'score': 5},
          {'text': 'Maggie', 'score': 10},
          {'text': 'Wraps', 'score': 15},
          {'text': 'Burger', 'score': 20},
        ],
      },
    ];
    return MaterialApp(
      title: 'My Quiz App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Quiz App"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: _index < _question.length
            ? Quiz(qindex: _index, questions: _question, updat: _update)
            : Result(_reset, _totalScore),
      ),
    );
  }
}
