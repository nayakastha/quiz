import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';
import './result.dart';

void main() {
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
  var totalScore = 0;

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  var questions = [
    "What is my favorite colour?",
    "What is my favorite food?",
    "Where would we most like to go on vacation?",
    "One moment we could relive now?",
    "Do you love me?(you better not say NO)!! "
  ];
  var ans1 = [
    {"text": "Black", "score": 10},
    {"text": "Mushrooms", "score": 0},
    {"text": "Beach", "score": 0},
    {"text": "First Kiss", "score": 10},
    {"text": "YES", "score": 0}
  ];
  var ans2 = [
    {"text": "White", "score": 0},
    {"text" : "Biryani", "score": 10},
    {"text" : "Mountains", "score": 0},
    {"text" : "First Hug", "score": 0},
    {"text" : "YESS", "score": 0}
  ];
  var ans3 = [
    {"text": "Blue", "score": 0},
    {"text" : "Sea Food", "score": 0},
    {"text": "We will do a toss or maybe visit both","score":10},
    {"text" : "Holding Hands First time", "score": 0},
    {"text" : "YESSSSS", "score": 10}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My First App"),
            ),
            body: _questionIndex < 5
                ? Column(
              children: [
                Questions(questions.elementAt(_questionIndex)),
                Answers(() => _answerQuestion(ans1.elementAt(_questionIndex)['score']), ans1.elementAt(_questionIndex)['text']),
                Answers(() => _answerQuestion(ans2.elementAt(_questionIndex)['score']), ans2.elementAt(_questionIndex)['text']),
                Answers(() => _answerQuestion(ans3.elementAt(_questionIndex)['score']), ans3.elementAt(_questionIndex)['text']),
              ],
            )
                : Result(totalScore)));
  }
}
