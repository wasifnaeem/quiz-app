import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';
import './models/answer.model.dart';
import './models/question.model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  List<QuestionModel> _questions = [
    QuestionModel(
      question: 'What\'s your favorite color?',
      answers: [
        AnswerModel(statement: 'Green', score: 9),
        AnswerModel(statement: 'Blue', score: 8),
        AnswerModel(statement: 'Red', score: 4),
        AnswerModel(statement: 'Black', score: 1),
      ],
    ),
    QuestionModel(
      question: 'What\'s your favorite animal?',
      answers: [
        AnswerModel(statement: 'Fly', score: 4),
        AnswerModel(statement: 'Snake', score: 1),
        AnswerModel(statement: 'Tortoise', score: 7),
        AnswerModel(statement: 'Rabbit', score: 9),
      ],
    ),
    QuestionModel(
      question: 'What\'s your favorite personality?',
      answers: [
        AnswerModel(statement: 'Muhammad (P.B.U.H)', score: 10),
        AnswerModel(statement: 'Jinnah', score: 7),
        AnswerModel(statement: 'Imran Khan', score: 5),
        AnswerModel(statement: 'Sultan Salahuddin', score: 6),
      ],
    ),
  ];

  _answerChosen(score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  resetQuiz() {
    _totalScore = 0;
    setState(() {
      _questionIndex = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Title'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerChosen: _answerChosen,
                  questionIndex: _questionIndex,
                )
              : Result(score: this._totalScore, resetQuiz: resetQuiz)),
    );
  }
}
