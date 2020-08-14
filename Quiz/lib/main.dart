import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  final _quesAns = const [
    {
      'questionText': 'What\'s your favourite Color?',
      'answerText': [
        {'text': 'Blue', 'score': 4},
        {'text': 'Green', 'score': 5},
        {'text': 'Red', 'score': 8},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favourite Animal?',
      'answerText': [
        {'text': 'Whale', 'score': 6},
        {'text': 'Leopard', 'score': 4},
        {'text': 'Lion', 'score': 7},
        {'text': 'Baby', 'score': 12}
      ]
    },
    {
      'questionText': 'Why don\'t you wanna die?',
      'answerText': [
        {'text': 'I don\'t like to die', 'score': 3},
        {'text': 'I\'ve some one', 'score': 6},
        {'text': 'I want to live', 'score': 0},
        {'text': 'Just let me die', 'score': 15}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("heyyy"),
          ),
          body: _questionIndex < _quesAns.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  quesAns: _quesAns,
                  questionIndex: _questionIndex,
                )
              : Result(_totalscore, _resetQuiz)),
    );
  }
}
