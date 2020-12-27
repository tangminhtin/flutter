import 'package:flutter/material.dart';
// import 'package:lesson_01_quiz_app/answer.dart';
// import 'package:lesson_01_quiz_app/question.dart';

import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 15},
        {'text': 'Red', 'score': 10}, 
        {'text': 'Green', 'score': 5}, 
        {'text': 'White', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 10}, 
        {'text': 'Elephant', 'score': 25}, 
        {'text': 'Loin', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your name?',
      'answers': [
        {'text': 'Tin', 'score': 15},
        {'text': 'Nam', 'score': 20}, 
        {'text': 'Vinh', 'score': 15}, 
        {'text': 'Thinh', 'score': 10}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length 
        ? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,
        ) : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
