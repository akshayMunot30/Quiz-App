import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = <Map<String, dynamic>>[
      <String, dynamic>{
        'questionText': 'What\'s your favourite color?',
        'answers': ['Blue', 'Black', 'Red', 'White'],
      },
      <String, dynamic>{
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Lion', 'Dog', 'Cat', 'Wolf'],
      },
      <String, dynamic>{
        'questionText': 'Who\'s your favourite instructor?',
        'answers': ['Max', 'Tom', 'Silus', 'John'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion,answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
