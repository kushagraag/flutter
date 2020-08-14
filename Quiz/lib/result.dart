import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultPhrase;
    if (resultScore <= 8) {
      resultPhrase = "Bad";
    } else if (resultScore <= 12) {
      resultPhrase = "Can be better";
    } else if (resultScore <= 15) {
      resultPhrase = "Try harder bitch";
    } else {
      resultPhrase = "You are Gem bro!!!";
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          FlatButton(
              child: Text('Restart Quiz',
                  style: TextStyle(fontSize: 20, color: Colors.blue)),
              onPressed: resetQuiz),
        ],
      ),
    );
  }
}
