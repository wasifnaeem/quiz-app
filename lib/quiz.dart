import 'package:complete_guide/models/question.model.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './models/question.model.dart';

class Quiz extends StatelessWidget {
  final List<QuestionModel> questions;
  final int questionIndex;
  final Function answerChosen;

  Quiz({this.questions, this.questionIndex, this.answerChosen});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex].question),
        Column(
          children: <Widget>[
            for (var item in questions[questionIndex].answers)
              Answer(
                handler: answerChosen,
                label: item?.statement,
                score: item?.score,
              ),
          ],
        ),
      ],
    );
  }
}
