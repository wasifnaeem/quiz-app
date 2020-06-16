import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String statement;
  Question(this.statement);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(6),
      child: Text(
        this.statement,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
