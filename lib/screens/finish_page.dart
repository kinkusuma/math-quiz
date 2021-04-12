import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:math_quiz/screens/home_page.dart';

class FinishScreen extends StatelessWidget {
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
                    'Game over :(',
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
                    'Back to main',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MainScreen();
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
