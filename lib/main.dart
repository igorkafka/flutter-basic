
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions =  const [{'questionText':'What\'s your favorite color?', 'answers':[{'text':'Black', 'score': 10},{'text':'red', 'score': 23}, {'text': 'Green', 'score': 34}]}, 
  {'questionText':'what\' your favorite anime?', 'answers':[{'text': 'Naruto', 'score':10},{'text':'Evangelion', 'score': 30}, {'text':'Dragon Ball GT', 'score':'20'}]}];
  var _questionIndex = 0;
  var _totalScore = 0;


  void _answerQuestion  (int score) {
    _totalScore = _totalScore + score;
    setState(() {
          _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My First App',)
      ),
      body: _questionIndex < _questions.length ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questionIndex: _questionIndex): Result(_totalScore))
    ,);
  }
}