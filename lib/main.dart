import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const <Map<String, dynamic>>[
    <String, dynamic>{
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Blue', 'score': 4},
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'White', 'score': 2}
      ],
    },
    <String, dynamic>{
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Lion', 'score': 8},
        {'text': 'Dog', 'score': 4},
        {'text': 'Cat', 'score': 4},
        {'text': 'Wolf', 'score': 10}
      ],
    },
    <String, dynamic>{
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        {'text': 'Max', 'score': 8},
        {'text': 'Tom', 'score': 4},
        {'text': 'Silus', 'score': 10},
        {'text': 'John', 'score': 2}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
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
    if (_questionIndex < _questions.length) {
      print('We have another question!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
