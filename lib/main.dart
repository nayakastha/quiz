import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
    "The metal whose salts are sensitive to light is ?",
    "The device used for measuring altitudes is ?",
    "The Gate way of India is ?",
    "The first chairman of the Atomic Energy Commission was ?",
    " D.D.T. was invented by ? "
  ];
  var ans1 = [
    {"text": "Silver", "score": 10},
    {"text": "Ammeter", "score": 0},
    {"text": "Goa", "score": 0},
    {"text": "Dr.H.J.Bhabha", "score": 10},
    {"text": "Rudeolf", "score": 0}
  ];
  var ans2 = [
    {"text": "Gold", "score": 0},
    {"text": "Altimeter", "score": 10},
    {"text": "Kolkata", "score": 0},
    {"text": "Dr.Vikram Sarabhai", "score": 0},
    {"text": "Dalton", "score": 0}
  ];
  var ans3 = [
    {"text": "Alumunium", "score": 0},
    {"text": "Galvanometer", "score": 0},
    {"text": "Mumbai", "score": 10},
    {"text": "Dr.A.P.J.Abdul Kalam", "score": 0},
    {"text": "Mosle", "score": 10}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Hexcolor('#FFE8F7'),
            appBar: AppBar(
              backgroundColor: Hexcolor('#FF3E8F'),
              title: Text(
                "Quiz App",
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            body: _questionIndex < 5
                ? Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Questions(questions.elementAt(_questionIndex)),
                        Answers(
                            () => _answerQuestion(
                                ans1.elementAt(_questionIndex)['score']),
                            ans1.elementAt(_questionIndex)['text']),
                        Answers(
                            () => _answerQuestion(
                                ans2.elementAt(_questionIndex)['score']),
                            ans2.elementAt(_questionIndex)['text']),
                        Answers(
                            () => _answerQuestion(
                                ans3.elementAt(_questionIndex)['score']),
                            ans3.elementAt(_questionIndex)['text']),
                      ],
                    ),
                  )
                : Result(totalScore)));
  }
}
