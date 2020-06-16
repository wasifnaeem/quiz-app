import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  Result({this.score, this.resetQuiz});

  String get outputMsg {
    String output = '';

    if (score < 10)
      output = 'You are a bad guy';
    else if (score < 20)
      output = 'You are a normal man';
    else
      output = 'You are good guy';
    return output;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'You got $score scores',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.orangeAccent),
        ),
        Text(
          outputMsg,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.orangeAccent),
        ),
        RaisedButton(
          child: Text('Reset'),
          onPressed: resetQuiz,
        )
      ],
    ));
  }
}
