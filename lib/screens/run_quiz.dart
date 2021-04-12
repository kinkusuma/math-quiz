import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:math_quiz/logic/quiz_maker.dart';
import 'package:math_quiz/screens/finish_page.dart';

QuizMain quizMain = QuizMain();

class RunQuiz extends StatefulWidget {
  @override
  _RunQuizState createState() => _RunQuizState();
}

class _RunQuizState extends State<RunQuiz> {
  var _chance = 3;
  var _userAnswer = 0;
  var _score = 0;
  void _check(var userAnswer) {
    var correctAnswer = int.parse(quizMain.answer());

    setState(() {
      if (_chance - 1 == 0) {
        _score = 0;
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return FinishScreen();
        }));
      } else {
        if (correctAnswer == userAnswer) {
          _score += 10;
        } else {
          _chance -= 1;
        }
        quizMain.next();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            child: Row(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Score = ' + _score.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Chance = ' + _chance.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ])),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizMain.question(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (var value) {
                  setState(() {
                    _userAnswer = int.parse(value);
                  });
                }),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.yellow,
              child: Text(
                'Submmit',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                _check(_userAnswer);
              },
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(),
        )
      ],
    );
  }
}
