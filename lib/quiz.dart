import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({required this.questions, required this.answerQuestion, required this.questionIndex});
 
  @override
  Widget build(BuildContext context) {


    return 
       Column(children: <Widget>[
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((a) => Answer(()=> answerQuestion(a['score']), a['text'] as String)).toList()
      ],);
  }
}