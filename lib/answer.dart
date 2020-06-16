import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String label;
  final int score;

  Answer({this.handler, this.label, this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(label),
        onPressed: () => handler(score),
      ),
    );
  }
}
