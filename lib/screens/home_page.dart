import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:math_quiz/screens/quiz_page.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.yellow.shade100,
          body: Column(children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'MATH QUIZ',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: FlatButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text(
                    'Start',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return QuizScreen();
                    }));
                  },
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: SizedBox(),
            )
          ])),
    );
  }
}
