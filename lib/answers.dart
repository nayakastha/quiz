import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Answers extends StatelessWidget {
  final Function answerfun;
  final String answertext;

  Answers(this.answerfun, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: RaisedButton(
          color: Hexcolor('#FF855E'),
          textColor: Colors.black87,
          child: Text(
            answertext,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onPressed: answerfun),
    );
  }
}
