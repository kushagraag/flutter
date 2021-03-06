import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quesAns;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.quesAns,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          quesAns[questionIndex]['questionText'],
        ),
        ...(quesAns[questionIndex]['answerText'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(
              () => answerQuestion(answer['score']),
              answer['text'],
            );
          },
        ).toList()
      ],
    );
  }
}
